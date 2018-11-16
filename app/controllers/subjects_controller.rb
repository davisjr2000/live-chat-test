class SubjectsController < ApplicationController
  def index
    @subject = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    @subject.save
  end

  def subject_params
    params.require(:subject).permit(:title)
  end
end
