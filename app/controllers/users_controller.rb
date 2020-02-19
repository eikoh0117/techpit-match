class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = User.find_by(id: params[:id])
  end
  private
  def user_params
    params.require(:user).permit(:name, :self_introduction,:sex, :image_name)
  end

end
