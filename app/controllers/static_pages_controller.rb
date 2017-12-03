class StaticPagesController < ApplicationController
  def index
  	@most_viewed = Article.order('impressions_count DESC').take(5)
  	if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all.order(date: :desc)
    end
  end
end
