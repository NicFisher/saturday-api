class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :user_id, null: false
      t.string :kind, null: false
      t.date :scheduled_date, null: false
      t.string :duration, null: false
      t.string :title, null: false
      t.string :status, null: false
      t.text :description
      t.timestamps
    end
  end
end
