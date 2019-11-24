class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :payment
      t.integer :tour_id
      t.integer :quantity

      t.timestamps
    end
  end
end
