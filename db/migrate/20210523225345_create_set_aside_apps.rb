class CreateSetAsideApps < ActiveRecord::Migration[6.0]
  def change
    create_table :set_aside_apps do |t|
      t.boolean :sentenced_to_probation
      t.boolean :sentenced_to_department_of_corrections
      t.boolean :completed_probation
      t.boolean :complied_sentence
      t.boolean :discharged
      t.text :not_complied_sentence_explanation
      t.integer :paid_victim_restitution, default: 0, null: false
      t.text :unpaid_victim_restitution_explanation
      t.integer :paid_court, default: 0, null: false
      t.text :unpaid_court_explanation
      t.integer :prior_set_aside_app, default: 0, null: false
      t.date :prior_set_aside_app_date
      t.integer :prior_granted_set_aside, default: 0, null: false
      t.integer :prior_denied_set_aside, default: 0, null: false
      t.integer :open_criminal_cases, default: 0, null: false
      t.text :open_criminal_case_explanation
      t.integer :active_warrant, default: 0, null: false
      t.text :active_warrant_explanation
      t.text :extra_consideration
      t.integer :hearing_requested, default: 0, null: false
      t.timestamps
    end
  end
end
