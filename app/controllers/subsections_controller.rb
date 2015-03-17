class SubsectionsController < ApplicationController
  def index
    @section = Section.find(params[:section_id])
    @subsections = @section.subsections
  end
end
