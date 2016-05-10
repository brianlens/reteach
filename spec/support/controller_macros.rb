module ControllerMacros
  def login_user
    let(:user) { User.create(email: "brian@lens.nl", password: "12345678") }

    before(:each) do
      @request.env["devise.mapping"] = Devise.mapping[:user]
      sign_in user
    end
  end
end
