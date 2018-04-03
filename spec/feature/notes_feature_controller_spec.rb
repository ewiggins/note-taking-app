require 'rails_helper'

RSpec.feature "Notes", :type => :feature do
  #can't run capybara tests on AWS?
  # before do
  #   visit "/"
  #   click_link ("New Note")
  # end
  # it "clicks the new note button" do
  #   expect(page).to have_content("New Note")
  # end
  #
  # it "creates a new note" do
  #   click_on ("Create Note")
  #   expect(page).to have_content("Note Created Sucessfully.")
  # end
end
