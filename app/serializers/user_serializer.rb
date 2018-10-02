class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :about, :location, :what_do_you_ride, :email, :password, :username, :comments
  has_many :comments
  has_many :user_events
  has_many :events, through: :user_events
end
