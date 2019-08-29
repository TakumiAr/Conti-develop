class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :additional_explanation
      t.text :content
      t.string :service_category
      t.text :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
