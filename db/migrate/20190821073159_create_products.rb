class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :song_title
      t.string :title
      t.string :instrument
      t.float :score
      t.text :explanation
      t.string :video
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
