class AddViewCountToClubs < ActiveRecord::Migration[5.1]
  def change
    add_column :clubs, :views, :integer
  end
end
