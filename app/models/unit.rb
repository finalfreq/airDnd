class Unit<ActiveRecord::Base

  has_many :users, through: :reservations
  has_many :reservations
  has_many :photos
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true


  # def photos_array=(array)
  #   array.each do |file|
  #     photos.build(:avatar => file)
  #   end
  # end




end
