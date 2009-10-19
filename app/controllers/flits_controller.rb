class FlitsController < ApplicationController
  before_filter :login_required
  
  def create
    flit = current_user.flits.build(params[:flit])
    flit.message = flit.message[0..140]
    flit.created_at = Time.now # HACK
    flit.save!
    redirect_to root_path
  end
  
  def destroy
    
  end
  
end
