class HomesController < ApplicationController
  def top
    @user = current_user
    @all_ranks = Complaint.find(Cheer.group(:complaint_id).order('count(complaint_id) desc').limit(3).pluck(:complaint_id))
    @all_rankings = GoodThing.find(Favorite.group(:good_thing_id).order('count(good_thing_id) desc').limit(3).pluck(:good_thing_id))
  end

  def about
  end
end
