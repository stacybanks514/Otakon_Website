require 'rails_helper'

describe "Managing Control Flow" do

  it "user visits root page" do
    visit '/'
    expect(page).to have_content 'Otakon'
  end

  it "user can see articles" do
    visit '/'
    within ('#articles') do
      expect(page).to have_css('th', text: 'Title')
      expect(page).to have_css('th', text: 'Body')
    end
  end

  # it "user can see articles" do
  #   visit '/'
  #   expect(page).to have_content 'Title'
  # end

end
