# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Client < ApplicationRecord
end
