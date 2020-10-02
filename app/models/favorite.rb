class Favorite < ApplicationRecord
  validates :unsplash_id, uniqueness: true, presence: true
end
