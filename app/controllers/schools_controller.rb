class SchoolsController < ActionController::Base

    def index
      @schools = School.all

      respond_to do |format|
      format.json {render json: @schools}
     end
   end

   def show
     @school = School.find(params[:id])

     respond_to do |format|
     format.json {render json: @schools}
    end
   end
end
