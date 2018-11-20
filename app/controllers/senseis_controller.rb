class SenseisController < ApplicationController
  def new
    @user = current_user
    @sensei = Sensei.new
  end

  def create
    @sensei = Sensei.new
    @sensei.user = current_user
    # @sensei.school_subject = SchoolSubject.find_by(title: params[:sensei][:school_subject])
    if @sensei.save
      redirect_to @sensei
    else
      render :new
    end
  end

  def index
    if params[:query].present?
      @senseis = Sensei.search_by_subject(params[:query])
    else
      @senseis = Sensei.all
    end
  end

  def show
    @sensei = Sensei.find(params[:id])
    @senseisubs = SenseiSubject.where(sensei_id: params[:id])
  end
end
