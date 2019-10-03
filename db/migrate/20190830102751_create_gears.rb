class CreateGears < ActiveRecord::Migration[6.0]
  def change
    create_table :gears do |t|
      t.string :name, null: false
      t.text :image_data
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
