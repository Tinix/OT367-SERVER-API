class CreateAnnouncements < ActiveRecord::Migration[7.1]
  def change
    create_table :announcements do |t|
      t.string :name, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
