class ReviewsController < ActionController::Base
  before_filter :set_teacher

  def index
    @reviews = @teacher.reviews

    respond_to do |format|
    format.json {render json: @reviews}
   end
  end


  # def show
  #   @review = Review.find(params[:id])
  # end
  #
  # def new
  #   @review = Review.new
  # end
  #
  # def create
  #   @review = Review.new(review_params)
  #   respond_to do |format|
  #     if @review.save
  #       format.json { render :show, status: :created, location: @review }
  #     else
  #       format.json { render json: @review.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # private
  #
  # def review_params
  #   params.require(:review).permit(:title, :description, :rating)
  # end

  protected

  def set_teacher
    @teacher = Teacher.find(params[:teacher_id])
  end



end
