class DeleteOldAdminPassword < ActiveRecord::Migration[7.0]
  def change
    remove_column(:administrators,:password)
  end
end
