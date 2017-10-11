class AddUuidToEveryTable < ActiveRecord::Migration[5.1]
  def up
    tables = [
      "devices",
      "addresses",
      "repairs",
      "users",
      "admins"
    ]

    tables.each do |table|
      add_column table, :uuid, :uuid, default: "uuid_generate_v4()", null: false
    end
  end
end
