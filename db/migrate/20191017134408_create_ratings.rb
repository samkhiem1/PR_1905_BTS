class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :tour_id
      t.int :star

      t.timestamps
    end
  end
end
