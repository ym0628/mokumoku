class RelationshipsController < ApplicationController
  # when follow
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end
  # when unfollow
  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer  
  end
  # followings list
  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end
  # followers list
  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end
end
