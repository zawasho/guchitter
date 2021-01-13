class CheersController < ApplicationController
  
  def create
    @complaint = Complaint.find(params[:complaint_id])
    cheer = current_user.cheers.new(complaint_id: complaint.id)
    cheer.save
    redirect_to complaints_path
  end
  
  def destroy
    complaint = Complaint.find(params[:complaint_id])
    cheer = current_user.cheers.find_by(complaint_id: complaint.id)
    cheer.destroy
    redirect_to complaints_path
  end
end
