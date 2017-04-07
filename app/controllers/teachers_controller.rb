class TeachersController < ApplicationController
  before_filter :set_teacher, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  respond_to :html

  def index
    @teachers = Teacher.all
    respond_with(@teachers)
  end

  def show
    respond_with(@teacher)
  end

  def new
    @courses = Course.all
    @teacher = Teacher.new
    respond_with(@teacher)
  end

  def edit
    @courses = Course.all
  end

  def create
    @teacher = Teacher.new(params[:teacher])
    @teacher.save
    respond_with(@teacher)
  end

  def update
    @teacher.update_attributes(params[:teacher])
    respond_with(@teacher)
  end

  def destroy
    @teacher.destroy
    respond_with(@teacher)
  end

  private
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end
end
