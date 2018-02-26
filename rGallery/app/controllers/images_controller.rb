class ImagesController < ApplicationController
  def new
    @image=Image.new
  end

  def create
    @image=Image.new(image_params)

    if @image.save
      flash[:notice] = "Image Created"
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
  end

  def index
    @images=Image.all
  end

  private
    def image_params
      params.require(:image).permit(:image_title,:image_description,:category_id,:image,:remote_image_url,:image_file_size,:image_content_type)
    end
end
