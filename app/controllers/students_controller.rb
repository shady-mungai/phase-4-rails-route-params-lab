class StudentsController < ApplicationController

  def index
    # students = Student.all
    # render json: students
    student = Student.find_by(first_name:params[:first_name])
    render json: student
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
