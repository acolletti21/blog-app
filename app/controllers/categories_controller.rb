class CategoriesController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    category = Category.new(
      name: params[:name],
    )
    if category.save
      flash[:success] = "Successfully created category!"
      redirect_to '/posts'
    else
      flash[:warning] = "Could Not Create Category"
      redirect_to '/categories/new'
    end
  end

end


