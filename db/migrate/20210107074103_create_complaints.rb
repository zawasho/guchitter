class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.integer :user_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
