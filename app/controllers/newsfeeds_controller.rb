class NewsfeedsController < ApplicationController
  def create
    outcome = CreateNewsfeedService.new(newsfeed_params).call

    if outcome.success?
      render :json => { success: true }, status: :ok
    else
      render :json => { errors: outcome.errors }, status: :unprocessed_entity
    end
  end

  def newsfeed_params
    params.require(:newsfeed).permit(:title, :content)
  end
end