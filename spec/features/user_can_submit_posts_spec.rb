require 'rails_helper'
require_relative 'web_helpers'

RSpec.feature "Timeline", type: :feature do
  before do
    sign_up
  end
  
  scenario "Can submit posts and view them" do
    click_on 'New post'
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
  end
  
  scenario "Can submit posts and view them" do
    expect(page).to have_content("Hello, world!")
  end

  scenario 'Users name appears on the post' do
    expect(page).to have_content "Posted by heen"
  end

end
