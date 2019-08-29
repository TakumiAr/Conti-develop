class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :portfolio01
      t.string :portfolio02
      t.string :portfolio03
      t.string :portfolio04
      t.string :portfolio05
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
