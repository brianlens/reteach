require 'rails_helper'

RSpec.describe SchoolsController, type: :controller do
  describe "GET index" do
    let!(:schools) { create_list(:school, 4) }

    it "assigns all schools to @schools" do
      get :index, format: :json
      expect(assigns(:schools)).to eq schools
    end
  end
end
