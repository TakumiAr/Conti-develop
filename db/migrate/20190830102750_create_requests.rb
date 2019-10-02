class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :title
      t.text :content
      t.string :image01
      t.string :image02
      t.string :video01
      t.datetime :proposal_deadline
      t.string :budget_estimate
      t.string :skype_id
      t.integer :host_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
