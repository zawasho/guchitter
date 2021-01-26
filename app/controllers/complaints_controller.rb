class ComplaintsController < ApplicationController
  before_action :authenticate_user!

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = current_user.complaints.new(complaint_params)

    if @complaint.save
      redirect_to thanks_complaints_path(@complaint)
    else
      render :new
    end
  end

  def thanks
  end

  def index
    @complaints = Complaint.page(params[:page]).reverse_order
    @user = current_user
  end

  def show
    @complaints = Complaint.all
    @complaint = Complaint.find(params[:id])
  end

  def room
    # ransack使用宣言
    @q = Complaint.ransack(params[:q])

    if params[:q].present?
      @q = Complaint.
        joins(:user).
        page(params[:page]).
        ransack(params[:q])
      @complaints = @q.result
    else
      @complaints = Complaint.page(params[:page]).reverse_order
    end

    @user = current_user
  end

  def edit
  end

  def destroy
    complaint = Complaint.find(params[:id])
    complaint.destroy
    redirect_to user_path
  end

  private

  def complaint_params
    params.require(:complaint).permit(:title, :body, :profile_image)
  end


end
