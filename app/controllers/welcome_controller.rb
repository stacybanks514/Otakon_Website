class WelcomeController < ApplicationController
  before_action 
  def index
    @articles = Article.all
  end
end
