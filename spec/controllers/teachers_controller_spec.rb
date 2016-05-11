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

  describe "GET show" do
    let!(:school) { create(:school) }
    let(:teacher) { create(:teacher) }

    it "assigns a teacher to @teacher" do
      get :show, teacher_id: teacher.to_param, school_id: school.to_param, format: :json
      expect(assigns(:teacher)).to eq(teacher)
    end
  end
end
