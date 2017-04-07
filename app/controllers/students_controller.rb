class StudentsController < ApplicationController
  before_filter :set_student, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  respond_to :html

  def index
    @students = Student.all
    respond_with(@students)
  end

  def show
    respond_with(@student)
  end

  def new
    @courses = Course.all
    @student = Student.new
    respond_with(@student)
  end

  def edit
    @courses = Course.all
  end

  def create
    @student = Student.new(params[:student])
    @student.save
    respond_with(@student)
  end

  def update
    @student.update_attributes(params[:student])
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end
