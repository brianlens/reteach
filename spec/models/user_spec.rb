require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validate user model" do
    it { is_expected.to have_many(:reviews) }
  end
end
