class AddBotsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bot, :boolean
    add_column :users, :autopic, :string
    add_column :users, :name, :string
  end
end
