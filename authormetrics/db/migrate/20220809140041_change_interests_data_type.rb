
class ChangeInterestsDataType < ActiveRecord::Migration[7.0]
  def change
    change_column(:authors,:interests, :text)
  end
end