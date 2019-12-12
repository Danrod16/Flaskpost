class Company < ApplicationRecord
  has_many :users
  has_many :postings

  validates :name, presence: true, allow_blanc: false, uniqueness: true
  validates :address, presence: true, allow_blanc: false
end
