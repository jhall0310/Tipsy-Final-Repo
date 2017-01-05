class HomesController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.all
    city_id = params[:city_id]
    @city = City.find_by(id: city_id)
  end
end
