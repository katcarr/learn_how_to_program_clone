require 'rails_helper'

describe "go to the lesson page process" do
  it "goes to the lesson page" do
    section = Section.create(:name => "Section")
    sub_section = Subsection.create(:name => "Subsection", :section_id => section.id)
    lesson = Lesson.create(:name => "Lesson", :subsection_id => sub_section.id)
    visit sections_path
    # save_and_open_page
    click_on 'Lesson'
    expect(page).to have_content 'Lesson'
  end
end


#     visit lists_path
#     click_on 'Add list'
#     fill_in 'Name', :with => 'Home stuff'
#     click_on 'Create List'
#     expect(page).to have_content 'Lists'
#   end
#
#   it "gives error when no name is entered" do
#     visit new_list_path
#     click_on 'Create List'
#     expect(page).to have_content 'errors'
