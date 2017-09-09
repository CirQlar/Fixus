class Address < ApplicationRecord
  belongs_to :user
  has_many :repairs
  validates_presence_of :line_1
end
