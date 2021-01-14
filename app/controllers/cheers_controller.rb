class CheersController < ApplicationController

  def create

    cheer = current_user.cheers.new(complaint_id: params[:complaint_id])
    cheer.save
    redirect_to room_complaints_path
  end

  def destroy
    complaint = Complaint.find(params[:complaint_id])
    cheer = current_user.cheers.find_by(complaint_id: complaint.id)
    cheer.destroy
    redirect_to complaints_path
  end
end
