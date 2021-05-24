class AddBirthDateToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :date_of_birth, :date
    add_column :clients, :phone_number, :string
  end
end
