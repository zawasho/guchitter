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
    @good_thing = GoodThing.find(params[:id])
    @user = current_user
  end

  def space
    # ransack使用宣言

    @q = GoodThing.ransack(params[:q])
    if params[:q].present?
      @q = GoodThing.
        joins(:user).
        page(params[:page]).
        ransack(params[:q])
      @good_things = @q.result
    else
      @good_things = GoodThing.page(params[:page]).reverse_order
    end

    @user = current_user
  end

  def edit
  end

  def destroy
    gt = GoodThing.find(params[:id])
    gt.destroy
    redirect_to good_thing_path
  end

  private

  def good_thing_params
    params.require(:good_thing).permit(:title, :body)
  end
end
