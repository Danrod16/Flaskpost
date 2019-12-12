class Match < ApplicationRecord
  belongs_to :profile, optional: true
  belongs_to :posting, optional: true
  has_many :messages
end
