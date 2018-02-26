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
    @category=Category.find(params[:id])
    @images=@category.images
  end

  def update
    @category=Category.find(params[:id])

    if @category.update(category_params)
      flash[:notice] = "Category Update"
      redirect_to images_path
    else
      render "edit"
    end
  end

  def show
    @category=Category.find(params[:id])
    @images=@category.images
  end

  def destroy
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
