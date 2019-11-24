class AddOrderToTours < ActiveRecord::Migration[5.2]
  def change
    add_column :tours, :order, :boolean
  end
end
