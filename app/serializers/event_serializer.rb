class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :date, :location, :what_to_bring, :creator, :active

  has_many :user_events
  has_many :users, through: :user_events
end
