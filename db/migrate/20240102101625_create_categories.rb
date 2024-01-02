class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, unique: true
      t.string :description

      t.timestamps
    end
  end
end
