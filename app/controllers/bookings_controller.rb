class BookingsController < ApplicationController
  def create
    return render json: params
  end
end