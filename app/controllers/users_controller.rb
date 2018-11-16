class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @sensei = @user.sensei
  end
end
