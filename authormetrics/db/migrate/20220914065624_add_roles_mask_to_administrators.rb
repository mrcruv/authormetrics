class AddRolesMaskToAdministrators < ActiveRecord::Migration[7.0]
  def change
    add_column :administrators, :roles_mask, :integer
  end
end
