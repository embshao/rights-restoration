class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.boolean :can_file
      t.timestamps
    end
  end
end
