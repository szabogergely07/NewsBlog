class StaticPagesController < ApplicationController
  def index
  	@articles = Article.limit(2)
  end
end
