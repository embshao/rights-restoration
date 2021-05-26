class CreatePostDischargeApps < ActiveRecord::Migration[6.0]
  def change
    create_table :post_discharge_apps do |t|
      t.integer :case_number
      t.date :date_of_judgement
      t.references :client, null: false, foreign_key: true
      t.boolean :judgement_of_guilt
      t.boolean :completed_probation
      t.boolean :two_year_discharge
      t.boolean :complied_probation
      t.boolean :uncomplied_probation
      t.text :uncomplied_probation_explanation
      t.boolean :federal_conviction, default: false
      t.boolean :paid_victim_restitution
      t.text :unpaid_victim_restitution_explanation
      t.boolean :paid_court
      t.text :unpaid_court_explanation
      t.boolean :prev_restoration_application
      t.date :prev_restoration_application_date
      t.boolean :prev_granted_restoration
      t.boolean :prev_denied_restoration
      t.boolean :open_criminal_cases
      t.boolean :active_warrant
      t.text :active_warrant_explanation
      t.text :extra_consideration
      t.boolean :hearing_requested
      t.string :aopo_name
      t.string :aopo_street_address
      t.string :aopo_zip_code
      t.string :aopo_city
      t.string :aopo_state_of_residence
    end
  end
end
