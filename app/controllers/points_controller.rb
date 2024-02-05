class PointsController < ApplicationController
  
  def index
    @points = Point.all 
    render :index 
  end
end
