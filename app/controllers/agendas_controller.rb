class AgendasController < ApplicationController
  def new
    @user = current_user
    @sensei = Sensei.find(params[:sensei_id])
    @agenda = Agenda.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end
end
