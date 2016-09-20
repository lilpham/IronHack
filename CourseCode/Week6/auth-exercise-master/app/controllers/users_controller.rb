class UsersController < ApplicationController

  # renders the home page
def home
  @current_user = User.find_by(id: session[:user_id])

  if @current_user
    @name = @current_user.username
  else
    @name = "Ironhack"
  end

  render :home 
end

  def index
    @users = User.all
  end

  # renders the signup form
  def new
  end

  def show
     @current_user = User.find_by(id: session[:user_id])

    if @current_user
      @name = @current_user.username
    else
      @name = "Ironhack"
  end
  end

  # receives form and creates a user from that data
  def create
    user = User.new(user_params)
    if user.save
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end   

  private

  def user_params
     params.require(:user).permit(
      :username, :email,
      :password, :password_confirmation)
  end

end
