class HotelsController < ApplicationController
  def index
    return render json: params
  end
end