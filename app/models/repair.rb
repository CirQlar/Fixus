class Repair < ApplicationRecord
  belongs_to :device
  belongs_to :address
end
