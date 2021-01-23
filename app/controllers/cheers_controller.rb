class CheersController < ApplicationController

  def create
    @complaint = Complaint.find(params[:complaint_id])
    cheer = current_user.cheers.new(complaint_id: params[:complaint_id])
    cheer.save


  end

  def destroy
    @complaint = Complaint.find(params[:id])
    cheer = current_user.cheers.find_by(complaint_id: @complaint.id)
    cheer.destroy
  end
end
