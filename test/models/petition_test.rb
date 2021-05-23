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
require 'test_helper'

class PetitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end