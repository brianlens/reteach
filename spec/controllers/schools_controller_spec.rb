require 'rails_helper'

RSpec.describe SchoolsController, type: :controller do
 describe "GET index" do
  it "assigns @schools" do
      schools = School.create(
                        name: "Codaisseur",
                        city: "Amsterdam",
                        rating: 4
      )
      get :index, format: :json
      expect(assigns(:schools)).to eq([school])
    end
  end
end
