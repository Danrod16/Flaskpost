class Match < ApplicationRecord
  belongs_to :application
  belongs_to :posting
  has_many :messages
end
