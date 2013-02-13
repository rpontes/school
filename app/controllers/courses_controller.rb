class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: t("flash.courses.create.notice") }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    params[:course][:discipline_ids] ||= []

    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: t("flash.courses.update.notice") }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
