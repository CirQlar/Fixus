class Address < ApplicationRecord
  has_many :repairs
  validates_presence_of :line_1
end
