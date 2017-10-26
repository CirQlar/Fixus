class AddHashIdToRepairs < ActiveRecord::Migration[5.1]
  def change
    add_column :repairs, :hash_id, :string
    add_index :repairs, :hash_id
  end
end
