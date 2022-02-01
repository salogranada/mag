class ChangePermissionLevelFromStringToInt < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :permission_level, :string
    add_column :users, :permission_level, :integer, default: 1
  end
end
