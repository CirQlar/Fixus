class AddTimeFieldsToRepairs < ActiveRecord::Migration[5.1]
  def change
    add_column :repairs, :pick_up_time, :datetime
    add_column :repairs, :fix_time, :datetime
    add_column :repairs, :deliver_time, :datetime
    add_column :repairs, :cancel_time, :datetime
  end
end
