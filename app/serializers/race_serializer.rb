class RaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :country, :length, :date, :winner, :second, :third, :img, :img2, :img3, :img4, :comments

  has_many :comments
end
