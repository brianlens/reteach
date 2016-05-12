require 'rails_helper'
require 'json_matchers/rspec'

RSpec.describe SchoolsController, type: :controller do
  describe "GET index" do
    let!(:schools) { create_list(:school, 4) }

    it "assigns all schools to @schools" do
      get :index, format: :json
      expect(assigns(:schools)).to eq schools
    end
  end

  describe "GET show" do
    let!(:school) { create(:school) }

    it "assigns a school with :id = x " do
      get :show, id: school.to_param, format: :json
      expect(assigns(:school)).to eq school
    end
  end

    # it "returns json format reviews" do
    #   get :index, format: :json
    #   expect(response).to match_response_schema("schools")
    # end
end
