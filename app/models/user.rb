class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :company, optional: true
  has_many :messages
  # has_many :profiles REPLACED BY BELOW METHOD 'PROFILES'

  # before_destroy :destroy_profiles

  def profiles
    Profile.where(user_id: self.id, status: 'active')
  end

  # def destroy_profiles
  #   Profile.where(user_id: self.id).delete_all
  # end
end
