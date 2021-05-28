# == Schema Information
#
# Table name: set_aside_apps
#
#  id                                     :integer          not null, primary key
#  active_warrant                         :integer          default("unfilled"), not null
#  active_warrant_explanation             :text
#  completed_probation                    :boolean
#  complied_sentence                      :boolean
#  discharged                             :boolean
#  extra_consideration                    :text
#  hearing_requested                      :integer          default("unfilled"), not null
#  not_complied_sentence_explanation      :text
#  open_criminal_case_explanation         :text
#  open_criminal_cases                    :integer          default("unfilled"), not null
#  paid_court                             :integer          default("unfilled"), not null
#  paid_victim_restitution                :integer          default("unfilled"), not null
#  prior_denied_set_aside                 :integer          default(0), not null
#  prior_granted_set_aside                :integer          default(0), not null
#  prior_set_aside_app                    :integer          default(0), not null
#  prior_set_aside_app_date               :date
#  sentenced_to_department_of_corrections :boolean
#  sentenced_to_probation                 :boolean
#  unpaid_court_explanation               :text
#  unpaid_victim_restitution_explanation  :text
#  created_at                             :datetime         not null
#  updated_at                             :datetime         not null
#
class SetAsideApp < ApplicationRecord
  belongs_to :client, optional: true
  # has_many :documents
  # has_many case_numbers

  enum paid_court: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :paid_court
  enum paid_victim_restitution: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :paid_victim_restitution

  enum prior_set_aside_app: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :prev_set_aside_app
  enum prior_granted_set_aside: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :prev_granted_set_aside
  enum prior_denied_set_aside: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :prev_denied_set_aside

  enum active_warrant: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :active_warrant
  enum open_criminal_cases: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :open_criminal_cases
  enum hearing_requested: { unfilled: 0, yes: 1, no: 2, unsure: 3 }, _prefix: :hearing_requested
end