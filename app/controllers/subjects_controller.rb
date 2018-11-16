class SubjectsController < ApplicationController
  def index
    @subject = Subject.all
  end
end
