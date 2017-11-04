class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.string :title, null: false
      t.references :recipe
      t.timestamps
    end
  end
end
