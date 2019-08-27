class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :title
      t.text :content
      t.string :image
      t.string :proposal_deadline
      t.string :budget_estimate

      t.timestamps
    end
  end
end
