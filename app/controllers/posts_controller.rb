class PostsController < ApplicationController

  before_action :authenticate_user!

  def index
    city_id = params[:city_id]
    @city = City.find_by(id: city_id)


  end

  def new
    @post = Post.new
    city_id = params[:city_id]
    @city = City.find_by(id: city_id)
    @user = current_user.id
  end

  def create

    city = City.find(params[:city_id])
    new_post = Post.new(post_params)
    new_post.user_id = current_user.id


  if new_post.save
      city.posts << new_post
      current_user.posts << new_post
      redirect_to city_posts_path(city, new_post)
  else
      flash[:error] = new_post.errors.full_messages.join(", ")
      redirect_to new_city_post_path(city)
  end

end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  def post_params
   params.require(:post).permit(:text)
  end


end
