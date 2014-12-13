class WelcomeController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def about
  end

  def directions
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