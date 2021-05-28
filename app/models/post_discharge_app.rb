# == Schema Information
#
# Table name: post_discharge_apps
#
#  id                                    :integer          not null, primary key
#  active_warrant                        :integer          default(0), not null
#  active_warrant_explanation            :text
#  aopo_city                             :string
#  aopo_state_of_residence               :string
#  aopo_street_address                   :string
#  aopo_zip_code                         :string
#  attorney_or_probation_officer_name    :string
#  completed_probation                   :boolean
#  complied_probation                    :boolean
#  date_of_judgement                     :date
#  discharged_two_plus_years             :boolean
#  extra_consideration                   :text
#  federal_conviction                    :boolean          default(FALSE)
#  hearing_requested                     :integer          default(0), not null
#  judgement_of_guilt                    :boolean
#  not_complied_probation_explanation    :text
#  open_criminal_cases                   :integer          default(0), not null
#  paid_court                            :integer          default(0), not null
#  paid_victim_restitution               :integer          default(0), not null
#  prior_denied_restoration              :integer          default(0), not null
#  prior_granted_restoration             :integer          default(0), not null
#  prior_restoration_application         :integer          default(0), not null
#  prior_restoration_application_date    :date
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
class PostDischargeApp < ApplicationRecord
end
