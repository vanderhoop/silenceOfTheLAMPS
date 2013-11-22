class LampsController < ApplicationController

  def new
    @lamp = Lamp.new
  end

  def create
    @lamp = Lamp.new(params[:lamp])
    if @lamp.save
      render json: @lamp
    end
  end

  def update
    @lamp = Lamp.find(params[:id])
    if @lamp.update_attributes(params[:lamp])
      render json: @lamp
    end
  end
end


