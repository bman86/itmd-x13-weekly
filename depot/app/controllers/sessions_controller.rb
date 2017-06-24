class SessionsController < ApplicationController
  skip_before_action :verifiy_authenticity_token
  def create
    @provier_response= request.env['omniauth.auth'].inspect
  end
end
