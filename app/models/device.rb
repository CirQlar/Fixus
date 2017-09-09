class Device < ApplicationRecord
  belongs_to :user
  has_many :repairs
  validates_presence_of :name
end
