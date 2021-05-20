# == Schema Information
#
# Table name: states
#
#  id           :integer          not null, primary key
#  abbreviation :string
#  can_file     :boolean
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class State < ApplicationRecord
end
