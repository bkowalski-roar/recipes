class DestroyPublicColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :public, :boolean
  end
end
