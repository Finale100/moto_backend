class RiderSerializer < ActiveModel::Serializer
  attributes :id, :name, :team, :nationality, :points, :bike, :podiums, :pole, :victories, :img

end
