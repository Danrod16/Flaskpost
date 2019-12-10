class Company < ApplicationRecord
  has_many :users
  has_many :postings

  validates :name, presence: true, allow_blanc: false
  validates :address, presence: true, allow_blanc: false
end
