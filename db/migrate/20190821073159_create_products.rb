class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :explanation
      t.string :video
      t.string :image_data
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
