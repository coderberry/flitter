class HomeController < ApplicationController
  before_filter :login_required
  
  def index
    @flits = current_user.all_flits
    @last_flit = current_user.flits.last
  end
  
end
