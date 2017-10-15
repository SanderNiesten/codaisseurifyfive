class Artist < ApplicationRecord
  validates :name, presence: true, length: { maximum: 250 }
end
