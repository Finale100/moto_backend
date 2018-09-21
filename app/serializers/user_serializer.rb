class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :about, :location, :what_do_you_ride
  #
  # has_many :comments
  # has_many :events
end
