class Camper_ActivitiesSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  has_many :activities
end
