class SenseisController < ApplicationController
  def new
    @user = current_user
    @sensei = Sensei.new
  end

  def create
    @user = current_user
    @sensei = Sensei.new
    @sensei.user = current_user
    if @sensei.save
      redirect_to @sensei
    else
      render :new
    end
  end

  def index
    @user = current_user
    @sensei = @user.sensei
    if params[:query].present?
      @senseis = Sensei.search_by_username(params[:query])
    else
      @senseis = Sensei.all
    end
  end

  def show
    @user = current_user
    @sensei = @user.sensei
  end
end
