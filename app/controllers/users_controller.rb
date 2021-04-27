class UsersController < ApplicationController
  def new
    @user = User.new
    @friends = @user.friends.build
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, friends_attributes: [:id, :friend_id, :friend_name, :_destroy])
  end
end
