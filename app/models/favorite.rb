class Favorite < ApplicationRecord

  validate :unsplash_id, unique: true, presence: true
end
