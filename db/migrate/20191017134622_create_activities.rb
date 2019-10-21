class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :tour_id
      t.integer :booking_id
      t.enums :favorite

      t.timestamps
    end
  end
end
