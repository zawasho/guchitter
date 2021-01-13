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
    @complaints = Complaint.all
  end

  def show
    @complaints = Complaint.all
    @complaint = Complaint.find(params[:id])
  end

  def edit
  end

  def destroy
    c = Complaint.find(params[:id])
    c.destroy
    redirect_to complaints_path
  end

  private
    def complaint_params
       params.require(:complaint).permit(:title, :body)
    end
end
