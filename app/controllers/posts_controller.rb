class PostsController < ApplicationController
  # GET /posts/new
  def new
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end
end