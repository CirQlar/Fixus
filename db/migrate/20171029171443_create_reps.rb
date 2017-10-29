class CreateReps < ActiveRecord::Migration[5.1]
  def change
    create_table :reps do |t|
      t.string :name
      t.string :email
      t.string :school
      t.integer :age
      t.integer :gender

      t.timestamps
    end
  end
end
