class AddStateToClient < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :state, :string
  end
end
