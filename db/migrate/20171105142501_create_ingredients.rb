class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.text :description
      t.timestamps
    end

    create_table :ingredient_stages do |t|
      t.belongs_to :ingredient
      t.belongs_to :stage
    end
  end
end
