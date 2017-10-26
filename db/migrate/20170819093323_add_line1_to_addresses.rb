class AddLine1ToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :line_1, :string
    add_column :addresses, :line_2, :string
    add_column :addresses, :lga, :string
  end
end
