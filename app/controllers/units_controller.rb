class UnitsController<ApplicationController
  load_and_authorize_resource param_method: :unit_params
  before_action :authenticate_user!


  def show
  end

  def index
  end

  def new
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      current_user.units.push(@unit)
      redirect_to @unit
    else
      render :new
    end
  end

  private
  def unit_params
    params.require(:unit).permit(:user_id, :name, :description, :address, :city, :state, :zip)
  end
end
