module HomeHelper

  def like(photo_id)
    if Favorite.find_by(unsplash_id: photo_id)
      "UnLike"
    else
      "Like"
    end
  end

  def action(photo_id)
    if Favorite.find_by(unsplash_id: photo_id)
      "create"
    else
      "destroy"
    end
  end
end
