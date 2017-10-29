class AddHashIdToReps < ActiveRecord::Migration[5.1]
  def change
    add_column :reps, :hash_id, :string
    add_index :reps, :hash_id
  end
end
