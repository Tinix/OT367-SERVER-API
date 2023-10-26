class AddDiscardedAtToOrganizations < ActiveRecord::Migration[7.1]
  def change
    add_column :organizations, :discarded_at, :datetime
    add_index :organizations, :discarded_at
  end
end
