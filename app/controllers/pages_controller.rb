class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @user = current_user
    @sensei = Sensei.where(user_id: @user.id)
  end
end
