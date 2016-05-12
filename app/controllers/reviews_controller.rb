class ReviewsController < ActionController::Base
  # before_filter :set_teacher

  def index
    @reviews = Review.all

    respond_to do |format|
    format.json {render json: @reviews}
   end
  end

  def create
    @review = Review.new(review_params)
    @review.save
    respond_to do |format|
    format.json {render json: @review}
   end
  end

  def new
    @review = Review.new

    respond_to do |format|
    format.json {render json: @review}
   end
  end


  def show
    @review = Review.find(params[:id])

    respond_to do |format|
    format.json {render json: @review}
   end
  end



  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end



  protected

  # def set_teacher
  #   @teacher = Teacher.find(params[:teacher_id])
  # end
  def review_params
    params.permit(:title, :description, :rating, :teacher_id, :user_id)
  end
end
