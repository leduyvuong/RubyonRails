class RelationshipsController < ApplicationController
  before_action :logged_in_user
  def create
    @user = User.find(params[:followed_id])
    current_user.follow(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
  def destroy
    @user = Relationship.find(params[:id]).followed
    if @user
      current_user.unfollow(@user)
      respond_to do |format|
        format.html { redirect_to @user }
        format.js
      end
    else
      flash[:noti] = "You are not follow this person "
      redirect_to @user 
    end
  end
end