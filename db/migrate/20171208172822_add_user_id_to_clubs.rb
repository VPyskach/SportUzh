class AddUserIdToClubs < ActiveRecord::Migration[5.1]
  def change
    add_column :clubs, :user_id, :integer
  end
end
