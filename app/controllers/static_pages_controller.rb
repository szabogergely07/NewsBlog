class StaticPagesController < ApplicationController
  def index
  	@most_viewed = Article.order('impressions_count DESC').take(5)
  	if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all.order(date: :desc)
    end
  end

  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
      to: 'szabogergely07@gmail.com',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
	end
end
