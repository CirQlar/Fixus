class AddColorToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :color, :string
    add_column :devices, :serial_number, :string
  end
end
