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


    it "returns json format reviews" do
      get :index, format: :json
      expect(response).to match_response_schema("reviews", strict: true)
    end
  end


  describe "GET show" do
    let!(:teacher) { create(:teacher) }
    let!(:review) { create(:review) }

    it "assigns a review to @review" do
      get :show, teacher_id: teacher.to_param, id: review.to_param, format: :json
      expect(assigns(:review)).to eq review
    end

    it "returns JSON format" do
   end
  end


  # describe "POST create" do
  #   it "" do
  #   end
  # end


  describe "GET new" do
    it "assigns a new review as @review" do
      get :new, format: :json
      expect(assigns(:review)).to be_a_new(Review)
    end
  end

  # describe "POST create" do
  #   let!(:teacher) { create(:teacher) }
  #   let!(:user) { create(:user) }
  #
  #   it "creates a new review and assigns it to @reviews" do
  #     post :create, teacher_id: teacher.to_param, format: :json
  #     expect(assigns(:reviews)).to eq reviews
  #   end
  # end
  #
  #   describe "GET#new" do
  #     it "assigns a new review as @reviews" do
  #     get :new
  #     expect(assigns(:review)).to be_a_new(Review)
  #
  #     end
  #   end
end
