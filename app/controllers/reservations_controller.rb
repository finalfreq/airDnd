class ReservationsController<ApplicationController
  load_and_authorize_resource param_method: :reservation_params

  def show
    @reservation = Reservation.find params[:id]
  end

  def new
    @user = current_user
    @unit = Unit.find params[:unit_id]
    @reservation = @unit.reservations.new
  end

  def create
    @unit = Unit.find params[:unit_id]
    @reservation = @unit.reservations.new reservation_params
    if @reservation.save
      redirect_to @reservation
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit :user_id, :start_date, :end_date
  end

end
