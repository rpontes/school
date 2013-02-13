class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
    @disciplines = Discipline.find(:all)
  end

  def edit
    @teacher = Teacher.find(params[:id])
    @disciplines = Discipline.find(:all)
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def create
    @teacher = Teacher.new(params[:teacher])

    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: t("flash.teachers.create.notice") }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @teacher = Teacher.find(params[:id])

    respond_to do |format|
      if @teacher.update_attributes(params[:teacher])
        format.html { redirect_to @teacher, notice: t("flash.teachers.update.notice") }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
