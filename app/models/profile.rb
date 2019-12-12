class Profile < ApplicationRecord
  # belongs_to :user // REPLACED BY 'USER' METHOD BELOW
  has_many :matches

  # FORM VALIDATIONS
  validates :field, presence: true, allow_blank: false, if: :active?
  validates :job_title, presence: true, allow_blank: false, if: :active?
  validates :experience, presence: true, allow_blank: false, if: :active?

  validates :languages, presence: true, allow_blank: false, if: :active?
  validates :locations, presence: true, allow_blank: false, if: :active?
  validates :contract_types, presence: true, allow_blank: false, if: :active?
  validates :salary_min, presence: true, allow_blank: false, if: :active?
  validates :salary_max, presence: true, allow_blank: false, if: :active?

  validates :description, presence: true, allow_blank: false, if: :active?

  validates :description, length: { maximum: 80, minimum: 10 }, if: :active?
  validates :salary_min, numericality: { only_integer: true }, if: :active?
  validates :salary_max, numericality: { only_integer: true }, if: :active?

  # VALIDATES USER
  validates :user_id, presence: true, if: :active?

  def user
    User.find(self.user_id) if active?
  end

  def active?
    status == 'active'
  end
end
