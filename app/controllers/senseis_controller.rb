class SenseisController < ApplicationController
  def new
    @user = current_user
    @sensei = Sensei.new
  end

  def create
    @user = current_user
    @sensei = Sensei.new(user_id: params[:user_id])
    if @sensei.save
      redirect_to user_sensei_path(params[:user_id], @sensei )
    else
      render :new
    end

  end

  def index
    @senseis = Sensei.all
  end

  def show
    @user = current_user
    @sensei = Sensei.find(params[:id])
  end
end
