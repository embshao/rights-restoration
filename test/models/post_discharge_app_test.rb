# == Schema Information
#
# Table name: post_discharge_apps
#
#  id                                    :integer          not null, primary key
#  active_warrant                        :boolean
#  active_warrant_explanation            :text
#  aopo_city                             :string
#  aopo_name                             :string
#  aopo_state_of_residence               :string
#  aopo_street_address                   :string
#  aopo_zip_code                         :string
#  case_number                           :integer
#  completed_probation                   :boolean
#  complied_probation                    :boolean
#  date_of_completion                    :date
#  date_of_judgement                     :date
#  extra_consideration                   :text
#  federal_conviction                    :boolean          default(FALSE)
#  hearing_requested                     :boolean
#  judgement_of_guilt                    :boolean
#  open_criminal_cases                   :boolean
#  paid_court                            :boolean
#  paid_victim_restitution               :boolean
#  prev_denied_restoration               :boolean
#  prev_granted_restoration              :boolean
#  prev_restoration_application          :boolean
#  prev_restoration_application_date     :date
#  two_year_discharge                    :boolean
#  uncomplied_probation                  :boolean
#  uncomplied_probation_explanation      :text
#  unpaid_court_explanation              :text
#  unpaid_victim_restitution_explanation :text
#  client_id                             :integer          not null
#
# Indexes
#
#  index_post_discharge_apps_on_client_id  (client_id)
#
# Foreign Keys
#
#  client_id  (client_id => clients.id)
#
require 'test_helper'

class PostDischargeAppTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
