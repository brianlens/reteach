class TeachersController < ActionController::Base
  before_filter :set_school

  def index
    @teachers = @school.teachers
  end

  protected

  def set_school
    @school = School.find(params[:school_id])
  end
end
