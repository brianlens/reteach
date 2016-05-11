require 'rails_helper'

RSpec.describe TeachersController, type: :controller do
  describe "GET index" do
   it "assigns @teachers" do
       teacher = Teacher.create(
                         name: "Ben",
                         nickname: "Hezus",
                         subject: "javaScript",
                         image: "url"
       )
       get :index, format: :json
       expect(assigns(:teachers)).to eq([teacher])
     end
   end
end
