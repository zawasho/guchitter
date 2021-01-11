class ComplaintsController < ApplicationController
  
  before_action :authenticate_user!
  
  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = Complaint.new
    if @complaint.save
      redirect_to thanks_complaints_path
    else
      render :new
    end
  end

  def index
    @complaints = Complaint.all
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
