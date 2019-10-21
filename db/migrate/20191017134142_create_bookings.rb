class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :userID
      t.integer :payment
      t.integer :tourID
      t.integer :quantity

      t.timestamps
    end
  end
end
