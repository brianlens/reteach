class ReviewsController < ActionController::Base
  # before_filter :set_teacher

  def index
    @reviews = Review.all

    respond_to do |format|
    format.json {render json: @reviews}
   end
  end

  def create

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
  end



  protected

  # def set_teacher
  #   @teacher = Teacher.find(params[:teacher_id])
  # end

  def review_params
    params.require(:reviews).permit(:title, :description, :teacher_id, :user_id)
  end
end
