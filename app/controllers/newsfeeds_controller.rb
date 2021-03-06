class NewsfeedsController < ApplicationController
  def create
    authorize(Newsfeed)
    outcome = CreateNewsfeedService.new(newsfeed_params).call

    if outcome.success?
      render :json => { success: true }, status: :ok
    else
      render :json => { errors: outcome.error }, status: :unprocessable_entity
    end
  end

  def index
    @newsfeeds = Newsfeed.all # Ideally should be paginated or scaled someway
    authorize(@newsfeeds)
    render json: @newsfeeds, each_serializer: NewsfeedSerializer
  end

  def newsfeed_params
    params.require(:newsfeed).permit(:title, :content)
  end
end