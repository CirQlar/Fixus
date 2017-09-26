class AddStatusToRepairs < ActiveRecord::Migration[5.1]
  def change
    add_column :repairs, :status, :integer, default: 0
    add_index :repairs, :status
  end
end
