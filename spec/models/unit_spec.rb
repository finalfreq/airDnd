require 'rails_helper'

  describe Unit do
    it {should have_many :reservations}
    it {should have_many :photos}
    it {should belong_to :user}
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
    it {should validate_presence_of :city}
    it {should validate_presence_of :state}
    it {should validate_presence_of :zip}
    it {should validate_presence_of :address}
  end
