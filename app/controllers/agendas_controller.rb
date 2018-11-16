class AgendasController < ApplicationController
  def new
    @user = current_user
    @sensei = Sensei.find(params[:sensei_id])
    @agenda = Agenda.new
  end

  def create
    @user = current_user
    @sensei = Sensei.find(params[:sensei_id])
    @agenda = Agenda.new
    @agenda.sensei = @sensei
    @agenda.date = params[:agenda][:date]
    @agenda.time = params[:agenda][:time]
    if @agenda.save
      render :new
    else
      raise
    end
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
