class GoodThingsController < ApplicationController
  
  before_action :authenticate_user!
  
  def new
    @good_thing = GoodThing.new
  end

  def create
    @good_thing = GoodThing.new
    if @good_thing.save

      redirect_to thanks_good_things_path
    else
      render :new
    end
  end
  
  def thanks
  end

  def index
    @good_things = GoodThing.all
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
