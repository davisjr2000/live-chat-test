class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @sensei = Sensei.select(unser_id: @user.id)
    # @current_user = current_user
  end
end
