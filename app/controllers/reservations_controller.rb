class ReservationsController<ApplicationController
  load_and_authorize_resource param_method: :reservation_params
  load_and_authorize_resource :unit

  def index

  end

  def show
    @reservation = Reservation.find params[:id]
    @unit = Unit.find(@reservation.unit.id)
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
      redirect_to @reservation, notice: 'Your reservation was successfully booked'
    else
      render :new, alert: 'your reservation was unsuccessfully booked'
    end
  end

  def edit

  end

  def update
    if @reservation.update reservation_params
      redirect_to @unit, notice: "Reservation successfully changed"
    else
      render :edit
    end
  end

  def destroy
    @reservation = Reservation.find params[:id]
    @reservation.destroy
    redirect_to unit_path @reservation.unit.id
  end

  private

  def reservation_params
    params.require(:reservation).permit :user_id, :start_date, :end_date
  end

end
