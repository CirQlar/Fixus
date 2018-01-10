class Rep < ApplicationRecord
  include Friendlyable

  validates_presence_of :name
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates_presence_of :age
  validates_presence_of :gender
  validates_presence_of :university

  enum gender: {
    male: 0,
    female: 1
  }
end
