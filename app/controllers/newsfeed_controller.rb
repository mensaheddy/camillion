class NewsfeedController < ApplicationController
  def create
    outcome = CreateNewsfeedService.new(newsfeed_params).call

    if outcome.success?
      render :json => { success: true }
    else
      render :json => { error: outcome.errors.first }
    end
  end

  def newsfeed_params
    params.require(:newsfeed).permit(:title, :content)
  end
end