class Rep < ApplicationRecord
  include Friendlyable

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :age
  validates_presence_of :gender
  validates_presence_of :school

  enum gender: {
    male: 0,
    female: 1
  }
end
