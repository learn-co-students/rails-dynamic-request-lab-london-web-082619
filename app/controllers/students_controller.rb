class StudentsController < ApplicationController
  def index
    @students = Student.all
    #implicit render of index.html.erb
  end
  def show
    @student = Student.find(params[:id])
    # implicit render of show.html.erb
  end
end