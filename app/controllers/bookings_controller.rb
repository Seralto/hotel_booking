class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    return render json: params
  end
end