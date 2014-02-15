class Tile < ActiveRecord::Base
  belongs_to :user
  validates :message, presence: true
  validate :track_id, presence: true
end
