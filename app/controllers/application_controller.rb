class ApplicationController < ActionController::Base
  include Pundit

  before_action :authenticate_user!
  private

  def authenticate_user!
    current_user # TODO: Implement authentication
  end

  def current_user
    @current_user ||= User.last # TODO
  end
end
