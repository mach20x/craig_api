class AddUserRefToReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :user_id, :integer
    add_reference :reviews, :user, foreign_key: true
  end
end
