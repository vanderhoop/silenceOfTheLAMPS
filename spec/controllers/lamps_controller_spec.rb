require 'spec_helper'

describe LampsController do

  describe 'GET #new' do
    it "renders the new view" do
      get :new
      expect(response).to render_template :new
    end

    it "assigns a new lamp to @lamp" do
      get :new
      expect(assigns(:lamp)).to be_a_new(Lamp)
    end

  end # describe GET #new

  describe 'POST #create' do
    it "creates a new Lamp" do
      expect{ post :create, :lamp => {} }.to change{Lamp.count}.by(1)
    end
  end # describe POST #create

  describe 'PUT #update' do
    it "locates the desired lamp"
    it "updates a lamp's attributes"
  end


end # describe LampsController


