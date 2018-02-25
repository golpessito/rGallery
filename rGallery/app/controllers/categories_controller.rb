class CategoriesController < ApplicationController
  def new
    @category=Category.new
  end

  def create
    @category=Category.new(category_params)

    if @category.save
      flash[:notice] = "Category Created"
      redirect_to images_path
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
