class AddDateOfCompletionToPostDischargeApps < ActiveRecord::Migration[6.0]
  def change
    add_column :post_discharge_apps, :date_of_completion, :date
  end
end
