class AddInfoToRepairs < ActiveRecord::Migration[5.0]
  def change
    add_column :repairs, :info, :text
  end
end
