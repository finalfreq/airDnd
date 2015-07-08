require 'rails_helper'

  describe Unit do
    it {should have_many :reservations}
    it {should have_many :users}
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
  end
