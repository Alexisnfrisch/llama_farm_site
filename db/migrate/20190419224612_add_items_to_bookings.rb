class AddItemsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :status, :string
    add_column :bookings, :cost, :integer
    add_column :bookings, :cancellation_reason, :text
  end
end
