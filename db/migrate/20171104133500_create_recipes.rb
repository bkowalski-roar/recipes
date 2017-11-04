class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.string :slug, null: false
      t.text :description
      t.timestamps
    end
  end
end
