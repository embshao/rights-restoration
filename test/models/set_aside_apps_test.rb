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
require 'test_helper'

class SetAsideAppTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
