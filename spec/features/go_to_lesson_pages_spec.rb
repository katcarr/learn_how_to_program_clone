require 'rails_helper'

describe "go to the lesson page process" do
  it "goes to the lesson page" do
    visit sections_path
    # click_on 'HTML and CSS basics'
    click_on 'Text Editor'
    expect(page).to have_content 'Text Editor'
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
