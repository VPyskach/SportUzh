class AddFiledsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :birthday, :date
    add_column :users, :soclink, :string
    add_column :users, :terms, :boolean
  end
end
