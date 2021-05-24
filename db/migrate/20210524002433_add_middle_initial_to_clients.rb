class AddMiddleInitialToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :middle_initial, :string
    add_column :clients, :street_address, :string
    add_column :clients, :zip_code, :string
    add_column :clients, :city, :string
    add_column :clients, :state_of_residence, :string
  end
end
