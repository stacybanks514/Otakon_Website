require 'rails_helper'

describe "Managing Control Flow" do

  it "user visits root page" do
    visit '/'
    expect(page).to have_content 'Otakon'
  end

  it "user can see articles" do
    visit '/'
    expect(page).to have_content 'Title'
  end

  # it "user can see articles" do
  #   visit '/'
  #   expect(page).to have_content 'Title'
  # end

end
