class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @user = current_user
    unless @user.nil?
      @sensei = Sensei.where(user_id: @user.id).first
    else
      @sensei = nil
    end
  end
end
