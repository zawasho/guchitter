class CreateCheers < ActiveRecord::Migration[5.2]
  def change
    create_table :cheers do |t|
      t.integer :user_id
      t.integer :complaint_id

      t.timestamps
    end
  end
end
