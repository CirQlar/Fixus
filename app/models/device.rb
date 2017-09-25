class Device < ApplicationRecord
  belongs_to :user
  has_many :repairs
  validates_presence_of :name
  validates_presence_of :color
  validates_presence_of :serial_number
end
