class AddPublicToRecipe < ActiveRecord::Migration[5.1]
  class Recipe < ActiveRecord::Base; end

  def change
    add_column :recipes, :public, :boolean, default: false, null: false
  end

end
