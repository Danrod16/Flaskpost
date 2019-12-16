class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # belongs_to :user // REPLACED BY 'USER' METHOD BELOW
  has_many :matches

  # FORM VALIDATIONS
  validates :field, presence: true, allow_blank: false, if: :active_or_first?
  validates :job_title, presence: true, allow_blank: false, if: :active_or_first?
  validates :experience, presence: true, allow_blank: false, if: :active_or_first?

  validates :languages, presence: true, allow_blank: false, if: :active_or_second?
  validates :locations, presence: true, allow_blank: false, if: :active_or_second?
  validates :contract_types, presence: true, allow_blank: false, if: :active_or_second?
  validates :salary_min, presence: true, allow_blank: false, if: :active_or_second?

  validates :description, presence: true, allow_blank: false, if: :active_or_third?

  validates :description, length: { maximum: 180, minimum: 20 }, if: :active_or_third?
  validates :salary_min, numericality: { only_integer: true }, if: :active_or_second?

  # VALIDATES USER
  validates :user_id, presence: true, if: :active?

  after_create :compute_score
  before_save :remove_empty_string

  # VALIDATION METHODS
  def active?
    status == 'active'
  end

  def user
    User.find(self.user_id) if active?
  end

  def active_or_first?
    status.include? "first" || active?
  end

  def active_or_second?
    status.include?('second') || active?
  end

  def compute_score
    stats = []
    types = ["contract_types", "languages", "locations", "experience"]
    types.each do |type|
      query = { field: field }
      query[type.to_sym] = send(type)
      stat = Posting.where(query).count.to_f / Posting.where(field: field).count.to_f
      stats << (stat.nan? ? 0 : stat)
    end

    self.score = ((stats.sum.to_f / stats.count.to_f) * 100).round.to_i
    save
  end

  def active_or_third?
    status.include?('third') || active?
  end

  private

  def remove_empty_string
    %w[contract_types languages locations].each do |attributes|
      self[attributes] = self[attributes]&.reject(&:blank?)
    end
  end
end
