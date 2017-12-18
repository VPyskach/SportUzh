class AddFieldsToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :body, :text
    add_column :reviews, :club_id, :integer
    add_column :reviews, :user_id, :integer
  end
end
