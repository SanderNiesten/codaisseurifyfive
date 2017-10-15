class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :name, presence: true, length: { maximum: 250 }, uniqueness: true
end
