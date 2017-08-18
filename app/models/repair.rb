class Repair < ApplicationRecord
  belongs_to :device
  belongs_to :address

  accepts_nested_attributes_for :device
  accepts_nested_attributes_for :address
end
