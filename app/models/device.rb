class Device < ApplicationRecord
  include Friendlyable

  self.per_page = 6

  belongs_to :user
  has_many :repairs
  validates_presence_of :name
  validates_presence_of :color
  validates_presence_of :serial_number

  def is_being_repaired?
    return false if repairs.empty?
    r = repairs.last
    unless r.delivered? or r.cancelled?
      return true
    else
      return false
    end
  end
end
