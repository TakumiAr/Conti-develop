class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :song_title
      t.string :title, null: false
      t.string :instrument
      t.text :content
      t.string :video
      t.text :video_explanation
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
