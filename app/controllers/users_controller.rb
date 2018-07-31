class UsersController < ApplicationController
	
  def new
  	@user = User.new
#ma variable d'instance qui créee un nouveau user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :create
    end
  end

  def show
      @user = User.find(params[:id])	
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :bio)
  end
end


