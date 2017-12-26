class AddAttributesToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :firstname, :string
    add_column :admins, :lastname, :string
    add_column :admins, :dob, :date
    add_column :admins, :gender, :integer
  end
end
