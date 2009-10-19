class HomeController < ApplicationController
  before_filter :login_required
  
  def index
    @flits = current_user.all_flits
    @last_flit = current_user.flits.last
  end
  
  def show
    @user = User.find_by_username(params[:username])
    @flits = @user.all_flits
  end
  
  def toggle_follow
    @user = User.find_by_username(params[:username])
    if current_user.is_friend? @user
      flash[:notice] = "You are no longer following @#{@user.username}"
      current_user.remove_friend(@user)
    else
      flash[:notice] = "You are now following @#{@user.username}"
      current_user.add_friend(@user)
    end
    redirect_to user_flits_path(@user.username)
  end
  
end
