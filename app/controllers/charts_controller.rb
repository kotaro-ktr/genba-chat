class ChartsController < ApplicationController
  def new
    @charts = Chart.new
  end
end
