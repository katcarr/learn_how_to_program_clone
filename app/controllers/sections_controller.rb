class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Section successfully added!"
      redirect_to sections_path
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(params[:section])
      flash[:notice] = "Section successfully updated!"
      redirect_to sections_path
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section successfully destroyed!"
    redirect_to sections_path
  end

  private
  def section_params
    params.require(:section).permit(:name)
  end
end
