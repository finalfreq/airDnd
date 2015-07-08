require 'rails_helper'

  describe User do
    it {should have_many :reservations}
    it {should have_many :units}
    it {should validate_presence_of :email}
  end
