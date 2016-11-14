require 'rails_helper'

feature "user creates todo" do

  scenario "successfully" do
    sign_in
  	click_on "Add a new todo"
  	fill_in "Title", with: 'Buy milk'
  	click_button "Submit"

  	expect(page).to have_css ".todos li", text: "Buy milk"
  end

end