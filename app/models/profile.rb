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

  def active_or_third?
    status.include?('third') || active?
  end
end
