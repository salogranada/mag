class AddStatusToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :state, :string, default: "in_draft"
  end
end
