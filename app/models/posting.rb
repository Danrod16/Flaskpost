class Posting < ApplicationRecord
  belongs_to :company
  has_many :matches

  validates :job_title, presence: true, allow_blank: false
  validates :field, presence: true, allow_blank: false
  validates :contract_types, presence: true, allow_blank: false
  validates :experience, presence: true, allow_blank: false
  validates :languages, presence: true, allow_blank: false
  validates :locations, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :salary_max, presence: true, allow_blank: false

  validates :description, length: { maximum: 180, minimum: 60 }
  validates :salary_max, numericality: { only_integer: true }
end
