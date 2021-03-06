# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  address     :string
#  latitude    :float
#  longitude   :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Place < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
