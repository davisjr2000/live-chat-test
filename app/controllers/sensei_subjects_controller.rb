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
    @sensei_subject.price_per_hour = params[:sensei_subject][:price_per_hour].to_i
    @sensei_subject.subject = Subject.find(params[:sensei_subject][:subject_id])
    if @sensei_subject.save
      sensei_sensei_subjects_path(@sensei)
    else
      raise
    end
  end

  def index
    @sensei = current_user.sensei
    @sensei_subject = SenseiSubject.new
    @sensei_subjects = SenseiSubject.where(sensei_id: @sensei.id).order(subject_id: :asc)
  end

  def destroy
  end
end
