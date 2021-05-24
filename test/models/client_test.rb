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
require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
