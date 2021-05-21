class User < ApplicationRecord
  has_many :friends, dependent: :destroy
  accepts_nested_attributes_for :friends
end
