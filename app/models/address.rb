class Address < ApplicationRecord
  has_many :repairs
  validates_presence_of :city
end
