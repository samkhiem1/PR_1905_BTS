class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.nil?
      flash[:danger] = "User not found!"
      redirect_to root_path
    end
  end

	def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :age, :phone)
  end
end
