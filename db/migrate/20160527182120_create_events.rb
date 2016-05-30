class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.timestamps :deleted_at, null: false
      t.timestamps null: false
    end
  end
end
