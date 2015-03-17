class Lesson < ActiveRecord::Base
  belongs_to :subsection

  validates :name, :presence => true

  define_method(:next_lesson) do
     if self == subsection.lessons.last
       if subsection == subsection.section.subsections.last
         if subsection.section == Section.last
           return nil
         else
           next_section = Section.find(subsection.section_id + 1)
           return next_section.subsections.first.lessons.first
         end
       else
         next_subsection = Subsection.find(self.subsection_id + 1)
         return next_subsection.lessons.first
       end
     else
       Lesson.find(self.id + 1)
     end
  end

  define_method(:previous_lesson) do
    if self == subsection.lessons.first
      if subsection == subsection.section.subsections.first
        if subsection.section == Section.first
          return nil
        else
          previous_section = Section.find(subsection.section_id - 1)
          return previous_section.subsections.last.lessons.last
        end
      else
        previous_subsection = Subsection.find(self.subsection_id - 1)
        return previous_subsection.lessons.last
      end
    else
      Lesson.find(self.id - 1)
    end
  end

end
