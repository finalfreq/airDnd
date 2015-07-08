class Unit<ActiveRecord::Base

  has_many :users, through: :reservations
  has_many :reservations
  has_many :photos
  validates :name, presence: true
  validates :description, presence: true

end
