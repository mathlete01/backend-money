class ClickSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :steps
  has_one :rows
end
