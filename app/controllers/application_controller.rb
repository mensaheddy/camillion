class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def authenticate_user!
    true # TODO
  end

  def authenticate_admin!
    true # Todo
  end
end
