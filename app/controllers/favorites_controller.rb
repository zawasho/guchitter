class FavoritesController < ApplicationController

  def create
    @good_thing = GoodThing.find(params[:good_thing_id])
    favorite = current_user.favorites.new(good_thing_id: params[:good_thing_id])
    favorite.save
  end

  def destroy
    @good_thing = GoodThing.find(params[:id])
    favorite = current_user.favorites.find_by(good_thing_id: @good_thing.id)
    favorite.destroy
  end

end
