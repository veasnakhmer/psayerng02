class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
	def new
	  @user = User.new
	end
	
	def home
		  @user = User.home
	end 
	
	def create
	  @user = User.new(user_params) #params[:user]
	  if @user.save
		  redirect_to products_url, :notice => "You have Successfully signed up!"
	  else
		  render "new"
	  end
	end
	
	def index
	   @users = User.all  
	end
	
	private

	  def user_params
		  params.require(:user).permit(:email, :password, :password_confirmation, :name, :phone)
	  end

end
