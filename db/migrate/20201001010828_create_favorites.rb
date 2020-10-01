class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :unsplash_id
      t.string :description
      t.string :image_url
      t.timestamps
    end
  end
end
