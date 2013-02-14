class DisciplinesController < ApplicationController

  def index
    @disciplines = Discipline.all
  end

  def new
    @discipline = Discipline.new
  end

  def edit
    @discipline = Discipline.find(params[:id])
  end

  def show
    @discipline = Discipline.find(params[:id])
  end

  def create
    @discipline = Discipline.new(params[:discipline])

    respond_to do |format|
      if @discipline.save
        format.html { redirect_to @discipline, notice: t("flash.disciplines.create.notice") }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @discipline = Discipline.find(params[:id])

    respond_to do |format|
      if @discipline.update_attributes(params[:discipline])
        format.html { redirect_to @discipline, notice: t("flash.disciplines.update.notice") }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
