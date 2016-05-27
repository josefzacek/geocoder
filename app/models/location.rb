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
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed?}
  
  def geocoded_by
    "#{address}, #{city}, #{country}, #{county}, #{postal_code}"
  end



end
