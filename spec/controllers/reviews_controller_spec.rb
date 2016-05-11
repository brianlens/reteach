require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
 describe "GET index" do
   let(:teacher) { create(:teacher) }
   let(:user) { create(:user) }
   let!(:reviews) { create_list(:review, 2, teacher: teacher) }

    it "assigns reviews to @reviews" do
      get :index, teacher_id: teacher.to_param, user_id: user.to_param, format: :json
      expect(assigns(:reviews)).to eq reviews
    end
  end

  describe "GET show" do
    let!(:user) { create(:user) }
    let!(:teacher) { create(:teacher) }
    let(:review) { create(:review) }

    it "assigns a review to @review" do
      get :show, teacher_id: teacher.to_param, user_id: user.to_param, format: :json
      expect(assigns(:review)).to eq review
    end
  end


  # describe "POST create" do
  #   it "" do
  #   end
  # end
  #
  # describe "GET new" do
  #   it "" do
  #   end
  # end

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
