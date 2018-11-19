class LessonRequestsController < ApplicationController
  def new
    @sensei = Sensei.find(params[:format])
    @lesson_request = LessonRequest.new
  end

  def create
  end

  def show
  end

  def index
  end

  def destroy
  end
end
