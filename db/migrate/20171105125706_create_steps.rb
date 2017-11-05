class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.text :content, null: false
      t.references :stage
      t.timestamps
    end
  end
end
