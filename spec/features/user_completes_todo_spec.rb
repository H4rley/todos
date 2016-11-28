require 'rails_helper'

feature 'User completes todo' do
  scenario 'successfully' do
    sign_in_as 'harley@github.com'
    
    click_on "Add a new todo"
  	fill_in "Title", with: 'Buy milk'
  	click_button "Submit"

    click_on 'Mark complete'
    expect(page).to have_css ".todos li.completed", text: "Buy milk"
  end
end