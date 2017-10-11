class ChangePrimaryKeysToUuid < ActiveRecord::Migration[5.1]
  def up
    tables = [
      "devices",
      "addresses",
      "repairs",
      "users",
      "admins"
    ]

    tables.each do |table|
      remove_column table, :id
      rename_column table, :uuid, :id
      execute "ALTER TABLE #{table} ADD PRIMARY KEY (id);"
    end
  end
end
