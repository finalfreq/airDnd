class UsersController < ApplicationController

  def index
    @unit = Unit.new
  end

  def show
    @user=User.find(params[:id])
  end


end
