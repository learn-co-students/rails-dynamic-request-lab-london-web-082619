class StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index'
  end

  def show
    @spef_student = Student.find(params[:id])
    render 'show'
  end
end