class LessonRequestsController < ApplicationController
  def new
    @sensei = Sensei.find(params[:format])
    @lesson_request = LessonRequest.new
    @sensei_subjects = SenseiSubject.where(sensei_id: @sensei.id)
  end

  def create
    @lesson_request = LessonRequest.new(params_lesson_request)
    @lesson_request.user = current_user
    @lesson_request.amount = @lesson_request.duration * SenseiSubject.where(subject_id: @lesson_request.subject_id, sensei_id: @lesson_request.sensei_id).first.price_per_hour / 60
    if @lesson_request.save
      redirect @lesson_request
    else
      raise
    end
  end

  def show
    @lesson_request = LessonRequest.find(params[:id])
  end

  def sensei_accepted
    @lesson_request = LessonRequest.find(params[:lesson_request_id])
    @lesson_request.sensei_accepted = true
    @lesson_request.save
    redirect_to new_chat_room_path(@lesson_request)
  end

  def index
    # if
    #   @lesson_requests = LessonRequest.where(user_id: current_user)
    # else
    #   @lesson_requests = LessonRequest.where(sensei_id: current_user.sensei)
    # end
  end

  def destroy
  end

  def params_lesson_request
    params.require(:lesson_request).permit(:sensei_id, :subject_id, :duration, :description)
  end
end
