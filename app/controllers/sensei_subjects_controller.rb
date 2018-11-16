class SenseiSubjectsController < ApplicationController
  def new
    @user = current_user
    @sensei = Sensei.find(params[:sensei_id])
    @sensei_subject = SenseiSubject.new
  end

  def create
    @user = current_user
    @sensei = Sensei.find(params[:sensei_id])
    @sensei_subject = SenseiSubject.new
    # (sensei_id: params[:sensei_id], subject_id: params[:subject_id])
    @sensei_subject.sensei = @sensei
    @sensei_subject.subject = Subject.find(params[:subject_id])
    if @sensei_subject.save
      render :new
    else
      raise
    end
  end

  def index
  end

  def destroy
  end
end
