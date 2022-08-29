class ChangingCommentTimestampColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column(:comments,:comment_timestamp)
    add_column :comments, :comment_timestamp, :datetime, default: -> { 'CURRENT_TIMESTAMP' }
  end
end
