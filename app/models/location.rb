# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  title       :string
#  address     :string
#  city        :string
#  country     :string
#  county      :string
#  postal_code :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  latitude    :float
#  longitude   :float
#

class Location < ActiveRecord::Base
end
