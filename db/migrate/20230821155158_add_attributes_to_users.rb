class AddAttributesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :cuisine_preferences, :string
    add_column :users, :is_chef, :boolean, default: false
  end
end
