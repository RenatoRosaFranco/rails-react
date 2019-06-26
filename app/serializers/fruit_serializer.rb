# frozen_string_literal: true

class FruitSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
end
