require 'rails_helper'

RSpec.describe TeachersController, type: :controller do
  let(:school) { create(:school) }
  let!(:teachers) { create_list(:teacher, 3, school: school) }

  describe "GET index" do
    it "assigns @teachers" do
       get :index, school_id: school.to_param, format: :json
       expect(assigns(:teachers)).to eq(teachers)
    end
  end
end
