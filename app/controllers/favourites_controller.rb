class FavouritesController < ApplicationController

  def favourites
    @favs=Song.all.select { |s| s.favourite == true }
  end


end
