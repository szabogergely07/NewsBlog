class StaticPagesController < ApplicationController
  def index
  	@articles = Article.limit(2).order(date: :desc)
  end
end
