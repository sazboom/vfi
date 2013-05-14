require File.dirname(__FILE__) + '/../spec_helper'

describe DriversController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Driver.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Driver.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Driver.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(driver_url(assigns[:driver]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Driver.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Driver.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Driver.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Driver.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Driver.first
    response.should redirect_to(driver_url(assigns[:driver]))
  end

  it "destroy action should destroy model and redirect to index action" do
    driver = Driver.first
    delete :destroy, :id => driver
    response.should redirect_to(drivers_url)
    Driver.exists?(driver.id).should be_false
  end
end
