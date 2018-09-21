class RaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :country, :length, :date, :winner, :second, :third


end
