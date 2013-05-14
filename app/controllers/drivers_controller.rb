class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(params[:driver])
    if @driver.save
      redirect_to @driver, :notice => "Successfully created driver."
    else
      render :action => 'new'
    end
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def update
    @driver = Driver.find(params[:id])
    if @driver.update_attributes(params[:driver])
      redirect_to @driver, :notice  => "Successfully updated driver."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @driver = Driver.find(params[:id])
    @driver.destroy
    redirect_to drivers_url, :notice => "Successfully destroyed driver."
  end
end
