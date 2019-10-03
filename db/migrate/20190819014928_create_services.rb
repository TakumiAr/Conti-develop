class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title, null: false
      t.text :content
      t.string :service_category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
