class Match < ApplicationRecord
  belongs_to :profile
  belongs_to :posting
  has_many :messages
end
