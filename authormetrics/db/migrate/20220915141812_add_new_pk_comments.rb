class AddNewPkComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :comment_id, :primary_key
  end
end
