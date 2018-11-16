class SenseiSubjectsController < ApplicationController
  def new
    @user = current_user
    @sensei = @user.sensei
    @sensei_subject = SenseiSubject.new
  end

  def create
    @user = current_user
    @sensei = @user.sensei
    @sensei_subject = SenseiSubject.new
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
