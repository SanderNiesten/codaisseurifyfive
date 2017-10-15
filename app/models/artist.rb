class Artist < ApplicationRecord
  has_many :songs

  validates :name, presence: true, length: { maximum: 250 }
end
