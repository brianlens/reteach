require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
 describe "GET index" do
   let(:teacher) { create(:teacher) }
   let!(:reviews) { create_list(:review, 2, teacher: teacher) }

    it "assigns reviews to @reviews" do
      get :index, teacher_id: teacher.to_param, format: :json
      expect(assigns(:reviews)).to eq reviews
    end
  end

 #
 # describe "GET show" do
 #  it "shows review with id x" do
 #    review = Review.create(
 #                    rating: 2,
 #                    description: "well that sucked",
 #                    title: "mediocre"
 #    )
 #      get :show, id: review.id
 #
 #      expect(assigns(:review)).to eq(review)
 #    end
 #  end
 #
 #
 #  describe "GET#new" do
 #    it "assigns a new review as @reviews" do
 #    get :new
 #    expect(assigns(:review)).to be_a_new(Review)
 #
 #    end
 #  end
 #
 #
 #  describe "POST#create" do
 #    context "with valid params" do
 #      let(:valid_params) {
 #        { review: {rating: 2, description:"Well that sucked", title:"mediocre"} }
 #      }
 #
 #      it "creates a new Review" do
 #        expect {
 #          post :create, valid_params
 #        }.to change(Review, :count).by(1)
 #       end
 #     end
 #   end

end
