class PostsController < ApplicationController
  def index
    @posts = Post.all
    category = params[:category]

    if category
      category = Category.find_by(name: category)
      @posts = category.posts
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      )
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
