class CreateRepairs < ActiveRecord::Migration[5.0]
  def change
    create_table :repairs do |t|
      t.references :device, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
