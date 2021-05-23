# == Schema Information
#
# Table name: petitions
#
#  id                                     :integer          not null, primary key
#  active_warrant                         :integer          default(0), not null
#  active_warrant_explanation             :text
#  additional_info_for_consideration      :text
#  completed_doc_sentence                 :integer          default(0), not null
#  completed_probation                    :integer          default(0), not null
#  hearing_requested                      :integer          default(0), not null
#  number_of_felonies                     :integer
#  open_criminal_case_explanation         :text
#  open_criminal_cases                    :integer          default(0), not null
#  paid_court                             :integer          default(0), not null
#  paid_victim_restitution                :integer          default(0), not null
#  prev_denied_set_aside                  :integer          default(0), not null
#  prev_granted_set_aside                 :integer          default(0), not null
#  prev_set_aside_app                     :integer          default(0), not null
#  prev_set_aside_app_date                :date
#  sentenced_to_department_of_corrections :integer          default(0), not null
#  sentenced_to_probation                 :integer          default(0), not null
#  uncompleted_sentence_explanation       :text
#  unpaid_court_explanation               :text
#  unpaid_victim_restitution_explanation  :text
#  created_at                             :datetime         not null
#  updated_at                             :datetime         not null
#
class Petition < ApplicationRecord
  belongs_to :client, optional: true
  # has_many :documents

  enum sentenced_to_probation: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :sentenced_to_probation
  enum completed_probation: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :completed_probation
  enum sentenced_to_department_of_corrections: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :sentenced_to_department_of_corrections
  enum completed_doc_sentence: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :completed_doc_sentence

  enum paid_court: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :paid_court
  enum paid_victim_restitution: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :paid_victim_restitution

  enum prev_set_aside_app: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :prev_set_aside_app
  enum prev_granted_set_aside: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :prev_granted_set_aside
  enum prev_denied_set_aside: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :prev_denied_set_aside

  enum active_warrant: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :active_warrant
  enum open_criminal_cases: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :open_criminal_cases
  enum hearing_requested: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :hearing_requested
end
