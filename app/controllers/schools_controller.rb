class SchoolsController < ActionController::Base

  def index
    @schools = School.all

    respond_to do |format|
        format.html
        format.json {render json: { schools: @schools} }
  end

end
