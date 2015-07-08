class UnitsController<ApplicationController

  def show
    @unit = Unit.find(params[:id])
  end

  def index
    @units = Unit.all
  end

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      redirect_to @unit
    else
      render :new
    end
  end

  private
  def unit_params
    params.require(:unit).permit(:name, :description, :address, :city, :state, :zip)
  end
end
