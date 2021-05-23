class CreatePetitions < ActiveRecord::Migration[6.0]
  def change
    create_table :petitions do |t|
      t.integer :number_of_felonies
      t.integer :sentenced_to_probation, default: 0, null: false
      t.integer :sentenced_to_department_of_corrections, default: 0, null: false
      t.integer :completed_probation, default: 0, null: false
      t.integer :completed_doc_sentence, default: 0, null: false
      t.text :uncompleted_sentence_explanation
      t.integer :paid_victim_restitution, default: 0, null: false
      t.text :unpaid_victim_restitution_explanation
      t.integer :paid_court, default: 0, null: false
      t.text :unpaid_court_explanation
      t.integer :prev_set_aside_app, default: 0, null: false
      t.date :prev_set_aside_app_date
      t.integer :prev_granted_set_aside, default: 0, null: false
      t.integer :prev_denied_set_aside, default: 0, null: false
      t.integer :open_criminal_cases, default: 0, null: false
      t.text :open_criminal_case_explanation
      t.integer :active_warrant, default: 0, null: false
      t.text :active_warrant_explanation
      t.text :additional_info_for_consideration
      t.integer :hearing_requested, default: 0, null: false
      t.timestamps
    end
  end
end
