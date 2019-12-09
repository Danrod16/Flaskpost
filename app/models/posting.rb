class Posting < ApplicationRecord
  belongs_to :company
  has_many :matches
end
