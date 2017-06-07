class StaticPagesController < ApplicationController
  def index
  	# @articles = Article.limit(2)
  	if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all.order(date: :desc)
    end
  end
end
