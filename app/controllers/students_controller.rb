class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @students = Student.create(params_path)

    redirect_to student_path(@student)
  end


  private
  
  def params_path
    params.require(:student).permit(:first_name, :last_name)
  end
end