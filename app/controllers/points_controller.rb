class PointsController < ApplicationController
  
  def index
    @points = Point.all 
    render :index 
  end

  def show
    @point = Point.find_by(id: params[:id])
    render :show 
  end
  
end
