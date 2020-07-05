class Api::V1::UsersController < ApiController
  def index
    user = User.all
    render json: user
  end
end