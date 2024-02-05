class PointsController < ApplicationController
  
  def index
    @point = Point.all 
    render :index 
  end

  def show
    @point = Point.find_by(id: params[:id])
    render :show 
  end
  
end
