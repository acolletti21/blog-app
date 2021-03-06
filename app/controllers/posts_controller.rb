class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
    category_type = params[:category]
    category = params[:category]

    if category_type
      category = Category.find_by(name: category_type)
      @posts = category.posts
    end
  end

  def new
    @post = Post.new
  end

  def create
    ##having a problem where it gets an error "user must exist" I don't know why my associations aren't working ##nevermind- this happened because one of my test posts didn't have a user associated & broke the whole page
    @post = Post.new(
                    title: params[:title],
                    content: params[:content],
                    user_id: params[:user_id]
                    )
    if @post.save
      flash[:success] = "Post Successfully Created"
      redirect_to "/posts/#{@post.id}"
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.assign_attributes(
                            content: params[:content],
                            title: params[:title]
                            )
    if @post.save
      flash[:success] = "Post Successfully Updated"
      redirect_to "/posts/#{@post.id}"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:warning] = "Post Deleted"
    redirect_to = "/posts"
    #figure out why this is deleting but not redirecting
  end
end
