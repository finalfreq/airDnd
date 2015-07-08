class Unit<ActiveRecord::Base

  has_many :users, through: :reservations
  has_many :reservations
  validates :name, presence: true
  validates :description, presence: true

end
