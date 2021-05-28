# == Schema Information
#
# Table name: clients
#
#  id                 :integer          not null, primary key
#  city               :string
#  date_of_birth      :date
#  email              :string
#  first_name         :string
#  last_name          :string
#  middle_initial     :string
#  phone_number       :string
#  state              :string
#  state_of_residence :string
#  street_address     :string
#  zip_code           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Client < ApplicationRecord
  # has_one :set_aside_app/:post_discharge_app, dependent: :destroy

end
