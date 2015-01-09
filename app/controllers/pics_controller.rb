class PicsController < ApplicationController

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pics_params)
    @pic.save
    redirect_to @pic.file.url
  end

  def delete_pics
    Pic.destroy_all
    redirect_to new_pic_path
  end

  private

  def pics_params
    params.require(:pic).permit(:position, :alpha, :file)
  end

end