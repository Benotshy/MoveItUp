class Event < ApplicationRecord
  belongs_to :user
  belongs_to :type

  has_many :participations
  has_many :participants, through: :participations, source: :user
end
