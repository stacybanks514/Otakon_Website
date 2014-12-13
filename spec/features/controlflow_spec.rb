require 'rails_helper'

describe "Managing Control Flow" do
  # def click_test(x)
  #   find_link('x').visible?
  #   find_link('x').click
  # end

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

  it "user clicks on options in nav bar and is lead to appropriate page" do
    visit '/'
    within ('#top-nav-bar') do
      find_link('mission').visible?
      find_link('mission').click
      expect(current_path).to eq('/welcome/about')
      find_link('mascots').visible?
      find_link('mascots').click
      expect(current_path).to eq('/welcome/about')
      find_link('history').visible?
      find_link('history').click
      expect(current_path).to eq('/welcome/about')
      find_link('otakon-go').visible?
      find_link('otakon-go').click
      expect(current_path).to eq('/welcome/about')
      find_link('private-policy').visible?
      find_link('private-policy').click
      expect(current_path).to eq('/welcome/about')
    end
  end

  it "HELP - user can see social links on footer" do
    visit '/'
    within ('#footer') do
      expect(page).to have_css('li')
    end
  end

  it "HELP - user can see and click on social links and be led to appropriate web page" do
    visit '/'
    within ('#footer') do
      find_link('twitter').visible?
      find_link('facebook').visible?
      find_link('pinterest').visible?
      find_link('tumblr').visible?
      find_link('foursquare').visible?
      # expect(current_url).not_to eq('/')
    end
  end

end
