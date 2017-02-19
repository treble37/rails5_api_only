class PostsController < ApplicationController
  def index
    render json: [{"name": "Post1"}, {"name": "Post2"}]
  end
end
