class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :confirmable, :rememberable, :trackable, :validatable

  has_many :devices
  has_many :addresses
  has_many :repairs

  VALID_PHONE_REGEX = /\A[0]\d{10}\Z/i
  validates :phone, presence: true, format: { with: VALID_PHONE_REGEX }
  validates :firstname, presence: true, length: {maximum: 255}
  validates :lastname, presence: true, length: {maximum: 255}
  validates :dob, presence:true
  validates :gender, presence: true

  enum gender: {
    male: 0,
    female: 1
  }
end
