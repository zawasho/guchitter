class GoodThingsController < ApplicationController

  before_action :authenticate_user!

  def new
    @good_thing = GoodThing.new
  end

  def create
    @good_thing = current_user.good_things.new(good_thing_params)
    if @good_thing.save
      redirect_to thanks_good_things_path(@good_thing)
    else

      render :new
    end
  end

  def thanks
  end

  def index
    @good_things = GoodThing.page(params[:page]).reverse_order
    @user = current_user
  end

  def show
  end
  
  def space
    @good_things = GoodThing.page(params[:page]).reverse_order
  end

  def edit
  end

  def destroy
    gt = GoodThing.find(params[:id])
    gt.destroy
    redirect_to good_things_path
  end

  private
  def good_thing_params
    params.require(:good_thing).permit(:title, :body)
  end
end
