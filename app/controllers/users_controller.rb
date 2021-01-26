class UsersController < ApplicationController
   before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @complaints = @user.complaints.order('id DESC').limit(3)
    @good_things = @user.good_things.order('id DESC').limit(3)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = '変更完了！'
      redirect_to user_path
    else
      render 'edit'
    end
  end

  def destroy
    complaint = Complaint.find(params[:id])
    complaint.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_image)
  end
end
