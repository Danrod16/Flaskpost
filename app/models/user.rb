class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]
  belongs_to :company, optional: true
  has_many :messages
  # has_many :profiles // REPLACED BY BELOW METHOD 'PROFILES'

  def profiles
    Profile.where(user_id: self.id, status: 'active')
  end
end
