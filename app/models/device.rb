class Device < ApplicationRecord
  has_many :repairs
  validates_presence_of :name
end
