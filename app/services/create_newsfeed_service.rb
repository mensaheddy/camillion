class CreateNewsfeedService
  attr_reader :attributes

  def initialize(attributes)
    @attributes = attributes
  end

  def call
    newsfeed = Newsfeed.new(attributes)

    if newsfeed.save
      Outcome.Success(newsfeed)
    else
      Outcome.Failure(newsfeed.errors.full_messsage)
    end
  end
end