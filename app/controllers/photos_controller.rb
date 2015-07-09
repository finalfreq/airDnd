class PhotosController<ApplicationController
  load_and_authorize_resource param_method: :photo_params
  load_and_authorize_resource :unit
  before_action :authenticate_user!

  def new
    @unit = Unit.find(params[:unit_id])
    @photo = Photo.new

  end

  def create
    @unit = Unit.find(params[:unit_id])
    @photo = @unit.photos.new(photo_params)
    if @photo.save
      redirect_to @unit
    else
        render :new
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:avatar)

  end

end
