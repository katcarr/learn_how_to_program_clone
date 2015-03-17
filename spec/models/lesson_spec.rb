require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name}
  it { should belong_to :subsection}

  describe("#next_lesson") do
    it("will return the next lesson object") do
      section = Section.create(:name => "Section")
      sub_section = Subsection.create(:name => "Subsection", :section_id => section.id)
      lesson1 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      lesson2 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      expect(lesson1.next_lesson).to(eq(lesson2))
    end
    it("will return nil if there are no next lessons") do
      section = Section.create(:name => "Section")
      sub_section = Subsection.create(:name => "Subsection", :section_id => section.id)
      lesson1 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      expect(lesson1.next_lesson).to(eq(nil))
    end
    it("will return the first lesson of the next subsection when clicking next lesson on a subsection's last lesson") do
      section = Section.create(:name => "Section")
      sub_section = Subsection.create(:name => "Subsection", :section_id => section.id)
      lesson1 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      lesson2 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      sub_section1 = Subsection.create(:name => "Subsection1", :section_id => section.id)
      lesson3 = Lesson.create(:name => "Lesson", :subsection_id => sub_section1.id)
      expect(lesson2.next_lesson).to(eq(lesson3))
    end
    it("will return the first lesson of the next section's first subsection's first lesson when clicking on a section's last subsection lesson") do
      section = Section.create(:name => "Section")
      sub_section = Subsection.create(:name => "Subsection", :section_id => section.id)
      lesson1 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      section1 = Section.create(:name => "Section1")
      sub_section1 = Subsection.create(:name => "Subsection1", :section_id => section1.id)
      lesson3 = Lesson.create(:name => "Lesson", :subsection_id => sub_section1.id)
      expect(lesson1.next_lesson).to(eq(lesson3))
    end
  end

  describe("#previous_lesson") do
    it("will return the previous lesson object") do
      section = Section.create(:name => "Section")
      sub_section = Subsection.create(:name => "Subsection", :section_id => section.id)
      lesson1 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      lesson2 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      expect(lesson2.previous_lesson).to(eq(lesson1))
    end
    it("will return nil if there are no previous lessons") do
      section = Section.create(:name => "Section")
      sub_section = Subsection.create(:name => "Subsection", :section_id => section.id)
      lesson1 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      expect(lesson1.previous_lesson).to(eq(nil))
    end
    it("will return the last lesson of the previous subsection when clicking previous lesson on a subsection's first lesson") do
      section = Section.create(:name => "Section")
      sub_section = Subsection.create(:name => "Subsection", :section_id => section.id)
      lesson1 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      lesson2 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      sub_section1 = Subsection.create(:name => "Subsection1", :section_id => section.id)
      lesson3 = Lesson.create(:name => "Lesson", :subsection_id => sub_section1.id)
      expect(lesson3.previous_lesson).to(eq(lesson2))
    end
    it("will return the last lesson of the previous section's last subsection's last lesson when clicking on a section's last subsection lesson") do
      section = Section.create(:name => "Section")
      sub_section = Subsection.create(:name => "Subsection", :section_id => section.id)
      lesson1 = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
      section1 = Section.create(:name => "Section1")
      sub_section1 = Subsection.create(:name => "Subsection1", :section_id => section1.id)
      lesson3 = Lesson.create(:name => "Lesson", :subsection_id => sub_section1.id)
      expect(lesson3.previous_lesson).to(eq(lesson1))
    end
  end





end
