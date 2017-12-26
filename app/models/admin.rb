class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  VALID_PHONE_REGEX = /^(\+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\- ]*$/i
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
