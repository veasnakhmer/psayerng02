class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 
# @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
 
  protect_from_forgery with: :exception
  helper_method :current_user
  
  private
  
  def index
    @products = Product.order("id DESC").all
  #@products = Product.paginate(:page => params[:page], :per_page => 10)
  end
  def current_user
	 @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def after_sign_in_path_for(resource)
	 redirect_to products_path
	 #sessions_home_path(resource)
  end
  
   def delete_profile(params)
     profile = Profile.find(params[:id])
     profile.deleted = true
   end  
  
  
end
