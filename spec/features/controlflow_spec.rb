require 'rails_helper'

describe "Root Page" do
  # def click_test(x)
  #   find_link('x').visible?
  #   find_link('x').click
  #   expect(current_path).to eq('/x/about')
  # end

  it "user visits root page" do
    visit '/'
    expect(page).to have_content 'Otakon'
  end

  it "user can see lastest news" do
    visit '/'
    within ('#articles') do
      expect(page).to have_css('th', text: 'Title')
      expect(page).to have_css('th', text: 'Body')
    end
  end

  it "HELP - user clicks on options in nav bar and is lead to appropriate page" do
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
      find_link('twitter-id').visible?
      # click_on ('twitter-id')
      # find_link('twitter-id').click
      # expect(current_path).not_to eq('/')
      find_link('facebook').visible?
      find_link('pinterest').visible?
      find_link('tumblr').visible?
      find_link('foursquare').visible?
      # expect(current_path).not_to eq('/')
    end
  end

  # it "user can see picture slider" do
  #   visit '/'
  #   within ('.example-orbit') do
  #     find_image('otakon-cooking.png').visible?
  #   end
  # end

end

describe "About Page" do

  it "user should see About page" do
    visit '/welcome/about'
    expect(page).to have_content 'About'
    expect(page).to have_content 'Mission Statement'
    expect(page).to have_content 'Private Policy'
    expect(page).to have_content 'Otakon Mascots'
  end

  it "user should see mission statement" do
    visit '/welcome/about'
    expect(page).to have_css('p', text: 'fans')
  end

  # it "user should see mascot images" do
  #   visit '/welcome/about'
  #   expect(page).to have_content('map_hiroko.gif')
  # end

end

describe "Community Page" do

  it "user should see About page" do
    visit '/welcome/community'
    expect(page).to have_content 'Clubs'
    expect(page).to have_content 'Community: Otakon Cosplay Coordination'
  end

end

describe "Contact Page" do

  it "user should see About page" do
    visit '/welcome/about'
    expect(page).to have_content 'Contact'
  end

end

describe "Convention Page" do

  it "user should see convention page headlines" do
    visit '/welcome/about'
    # expect(page).to have_css('h1', text: 'Convention Information')
    expect(page).to have_content 'Tickets'
    expect(page).to have_content 'Hours of Operation'
    page.has_selector?('table tr')
  end

end

describe "Directions Page" do

  it "user should see Directions page" do
    visit '/welcome/directions'
    expect(page).to have_content 'Directions'
  end

  it "user should see google maps" do
    visit '/welcome/directions'
    expect(page).to have_css('iframe')
  end

  it "user should see all roads to Otakon" do
    visit '/welcome/directions'
    # expect(page).to have_css(p, text: 'FAQ')
    expect(page).to have_content 'All Road lead to Otakon!'
    expect(page).to have_content 'This FAQ is aimed'
  end

end

describe "Join Page" do

  it "user should see Join our team" do
    visit '/welcome/join'
    expect(page).to have_content 'Volunteer'
  end

end

describe "Admin page" do

  it "Admin should be abel to log in" do
    visit '/admins/sign_in'
    expect(page).to have_css('h2', text: 'Administration Log in')
    within ('#field1') do
      fill_in 'email', :with => 'stacy@stacy.com'
    end
    within ('#field2') do
      fill_in 'password', :with => '1234567890'
    end
  end

end
