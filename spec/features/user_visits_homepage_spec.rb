require "rails_helper"

feature "User visits homepage" do
  scenario "succesfully" do
    visit root_path

    expect(page).to have_css 'p', text: 'destructive'
  end
end