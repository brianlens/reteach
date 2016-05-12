require 'rails_helper'
require 'json_matchers/rspec'

RSpec.describe ReviewsController, type: :controller do
 describe "GET index" do
   let(:teacher) { create(:teacher) }
   let(:user) { create(:user) }
   let!(:reviews) { create_list(:review, 2, teacher: teacher) }

    it "assigns reviews to @reviews" do
      get :index, teacher_id: teacher.to_param, user_id: user.to_param, format: :json
      expect(assigns(:reviews)).to eq reviews
    end
    #JSON return test!
    # it "returns json format reviews" do
    #   get :index, format: :json
    #   expect(response).to match_response_schema("reviews", strict: true)
    # end
  end


  describe "GET new" do
    it "assigns a new review as @review" do
      get :new, format: :json
      expect(assigns(:review)).to be_a_new(Review)
    end
    #JSON return test!
    # it "returns json format reviews" do
    #   get :new, format: :json
    #   expect(response).to match_response_schema("reviews", strict: true)
    # end
  end


  describe "GET show" do
    let!(:teacher) { create(:teacher) }
    let!(:review) { create(:review) }

    it "assigns a review to @review" do
      get :show, teacher_id: teacher.to_param, id: review.to_param, format: :json
      expect(assigns(:review)).to eq review
    end
    #JSON return test!
    # it "returns json format reviews" do
    #   get :show, format: :json
    #   expect(response).to match_response_schema("reviews", strict: true)
    # end
  end


  describe "POST create" do
    let!(:teacher) { create(:teacher) }
    let!(:review) { create(:review) }

    it "creates a new review" do
      expect {
      post :create, teacher_id: teacher.to_param, id: review.to_param, format: :json
    }.to change(Review, :count).by(1)
    end
    #JSON return test!
    # it "returns json format reviews" do
    #   get :create, format: :json
    #   expect(response).to match_response_schema("reviews", strict: true)
    # end
  end


  describe "DELETE destroy" do
    let!(:teacher) { create(:teacher) }
    let!(:review) { create(:review) }

    it "deletes a review" do
      expect{
      delete :destroy, teacher_id: teacher.to_param, id:review.to_param, format: :json
    }.to change(Review, :count).by(-1)
    end
  end

end
