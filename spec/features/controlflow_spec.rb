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

    it "HELP - user can see social links on footer" do
      visit '/'
      within ('#footer') do
      expect(page).to have_css('li')
    end
  end

end
