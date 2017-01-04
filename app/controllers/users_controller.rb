class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    #debugger
    #use (debugger) to check out variables when debugging
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end
  
  def new
    @user = User.new
    
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
