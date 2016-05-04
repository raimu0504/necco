class TweetsController < ApplicationController

  def index
    @tweet=Tweet.all
  end
  def new
    @tweet=Tweet.new
  end
  def create
    Tweet.create(tweet_params)
  end
  def edit
     @tweet = Tweet.find(params[:id])
  end
  def update
     @tweet = Tweet.find(params[:id])
     @tweet.update(tweet_params)
  end
  def destroy
    tweet=Tweet.find(params[:id])
    tweet.destroy
  end

  private
  def tweet_params
    params.require(:tweet).permit(:image,:text).merge(user_id: current_user.id)
  end

end
