class CreatePostDischargeApps < ActiveRecord::Migration[6.0]
  def change
    create_table :post_discharge_apps do |t|
      t.date :date_of_judgement
      t.references :client, null: false, foreign_key: true, index: true
      t.boolean :judgement_of_guilt
      t.boolean :completed_probation
      t.boolean :discharged_two_plus_years
      t.boolean :complied_probation
      t.text :not_complied_probation_explanation
      t.boolean :federal_conviction, default: false
      t.integer :paid_victim_restitution, default: 0, null: false
      t.text :unpaid_victim_restitution_explanation
      t.integer :paid_court, default: 0, null: false
      t.text :unpaid_court_explanation
      t.integer :prior_restoration_application, default: 0, null: false
      t.date :prior_restoration_application_date
      t.integer :prior_granted_restoration, default: 0, null: false
      t.integer :prior_denied_restoration, default: 0, null: false
      t.integer :open_criminal_cases, default: 0, null: false
      t.integer :active_warrant, default: 0, null: false
      t.text :active_warrant_explanation
      t.text :extra_consideration
      t.integer :hearing_requested, default: 0, null: false
      t.string :attorney_or_probation_officer_name
      t.string :aopo_street_address
      t.string :aopo_zip_code
      t.string :aopo_city
      t.string :aopo_state_of_residence
    end
  end
end
