
class WelcomeController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def about
  end

  def directions
    @url = "https://www.google.com/maps/embed/v1/place?key=#{ENV['google_api']}&q=Baltimore+Convention+Center,Baltimore+MD"
  end

  def convention_info
  end

  def community
  end

  def join
  end

  def contact
  end

end