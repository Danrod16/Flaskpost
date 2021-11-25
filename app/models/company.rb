class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :postings, dependent: :destroy

  # validates :name, presence: true, allow_blank: false, uniqueness: true
  # validates :address, presence: true, allow_blank: false
end
