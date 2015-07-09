class Unit<ActiveRecord::Base

  belongs_to :user
  has_many :reservations
  has_many :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true

  geocoded_by :address
  after_validation :geocode

  def full_address
    address + ', ' + city + ', ' + state + ' ' + zip

  end


end
