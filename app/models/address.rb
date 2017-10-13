class Address < ApplicationRecord
  include Friendlyable
  
  belongs_to :user
  has_many :repairs
  validates_presence_of :line_1
  validates_presence_of :lga
end
