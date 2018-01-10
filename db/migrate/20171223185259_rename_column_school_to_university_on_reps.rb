class RenameColumnSchoolToUniversityOnReps < ActiveRecord::Migration[5.1]
  def change
    rename_column :reps, :school, :university
  end
end
