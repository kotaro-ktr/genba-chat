class ChartsController < ApplicationController
  def new
    @charts = Chart.new
    @room = Room.find(params[:room_id])
  end
end
