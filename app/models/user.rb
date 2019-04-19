class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :comments
  has_many :responses

  has_many :bookings, dependent: :destroy
  has_many :events, through: :bookings

  has_one :avatar
  mount_uploader :avatar, AvatarUploader

  validates :username, presence: true
  validates :username, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
