class PostCategoriesController < ApplicationController
  def new
    @post = Post.find(params[:id])
    @post_category = PostCategory.new
  end

  def create
    @post = Post.find(params[:id])
    @category = Category.find(params[:id]) 
    @post_category = PostCategory.new(
                              post_id: params[:post_id],
                              category_id: params[:category_id][:id]
                              )
    if @post_category.save
      flash[:success] = "Category Added"
      redirect_to "/posts/#{@post.id}"
    else
      render :new
    end
  end
end
