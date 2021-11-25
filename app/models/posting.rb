class Posting < ApplicationRecord
  belongs_to :company
  has_many :matches, dependent: :destroy

  validates :job_title, presence: true
  # validates :contract_types
  # validates :experience
  # validates :languages
  validates :locations, presence: true
  # validates :description
  # validates :salary_max

  def self.filter_by_custom(attribute, query)
    Posting.all.select { |p| p.send(attribute)&.include?(query) }
  end

end
