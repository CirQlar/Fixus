class Repair < ApplicationRecord
  include Friendlyable
  
  belongs_to :device
  belongs_to :address
  belongs_to :user

  accepts_nested_attributes_for :device
  accepts_nested_attributes_for :address

  enum status: {
    awaiting_pick_up: 0,
    picked_up: 1,
    fixed: 2,
    delivered: 3,
    cancelled: 4
  }
end
