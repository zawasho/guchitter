class FavoritesController < ApplicationController
  
  def create
    good_thing = GoodThing.find(params[:good_thing_id])
    favorite = current_user.favorites.new(good_thing_id: good_thing.id)
    favorite.save
    redirect_to good_things_path
  end
  
  def destroy
  end
  
end
