# == Schema Information
#
# Table name: clients
#
#  id                 :integer          not null, primary key
#  city               :string
#  email              :string
#  first_name         :string
#  last_name          :string
#  middle_initial     :string
#  state              :string
#  state_of_residence :string
#  street_address     :string
#  zip_code           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Client < ApplicationRecord
  # has_one :petition, dependent: :destroy

end
# contact info -- address, phone number, email
# date of birth