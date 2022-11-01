class CreateJoinRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :join_requests do |t|
      t.integer :end_user_id, null: false
      t.integer :group_id, null: false

      t.timestamps
      t.index [:group_id, :end_user_id], unique: true
    end
  end
end
