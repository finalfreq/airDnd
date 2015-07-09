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
      redirect_to @unit, notice: "#{@unit.name} successfully added!"
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @unit.update(unit_params)
      redirect_to @unit, notice: "#{@unit.name} successfully updated!"
    end
  end


  def destroy
    @unit = Unit.find params[:id]
    @unit.destroy
    redirect_to units_path
  end

private
  def unit_params
    params.require(:unit).permit(:user_id, :name, :description, :address, :city, :state, :zip)
  end
end
