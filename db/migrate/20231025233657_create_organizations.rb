class CreateOrganizations < ActiveRecord::Migration[7.1]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :address
      t.integer :phone
      t.string :email, null: false
      t.text :welcome_text, null: false
      t.text :about_us_text

      t.timestamps
    end
    add_index :organizations, :email, unique: true
  end
end
