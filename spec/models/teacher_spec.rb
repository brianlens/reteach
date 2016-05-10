require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe "validate teacher model" do
    it { is_expected.to have_many(:reviews) }
    it { is_expected.to belong_to(:school) }
  end
end
