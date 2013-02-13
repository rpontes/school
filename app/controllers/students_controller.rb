class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    @courses = Course.find(:all)
  end

  def edit
    @student = Student.find(params[:id])
    @courses = Course.find(:all)
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: t("flash.students.create.notice") }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to @student, notice: t("flash.students.update.notice") }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
