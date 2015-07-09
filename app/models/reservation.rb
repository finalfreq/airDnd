class Reservation<ActiveRecord::Base
  belongs_to :user
  belongs_to :unit
  #
  validates_presence_of :start_date
  validates_presence_of :end_date

end
