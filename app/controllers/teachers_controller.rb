class TeachersController < ActionController::Base
  before_filter :set_school

  def index
    @teachers = @school.teachers

      respond_to do |format|
      format.json {render json: @teachers}
    end
  end

  def show
    @teacher = Teacher.find(params[:teacher_id])

    respond_to do |format|
    format.json {render json: @teachers}
   end
  end



  protected

  def set_school
    @school = School.find(params[:school_id])
  end
end
