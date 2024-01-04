class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :linkedin_url
      t.string :facebook_url
      t.string :instagram_url
      t.text :description
      t.datetime :discarded_at
      t.string :discarded_at

      t.timestamps
    end
  end
end
