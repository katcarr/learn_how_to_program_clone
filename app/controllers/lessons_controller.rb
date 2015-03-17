class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @next_lesson = @lesson.next_lesson
    if @next_lesson == nil
      @next_lesson = Lesson.first
      @next_subsection = Subsection.first
      @next_section = Section.first
    else
        @next_subsection = Subsection.find(@next_lesson.subsection_id)
        @next_section = Section.find(@next_subsection.section_id)
    end
  end
end
