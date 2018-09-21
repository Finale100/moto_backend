class RiderSerializer < ActiveModel::Serializer
  attributes :id, :name, :team, :nationality, :points, :bike, :podiums, :pole, :victories
  #
  # has_many :comments
  # has_many :events
end
