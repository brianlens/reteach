require 'rails_helper'

RSpec.describe School, type: :model do
  describe "validate school model" do
    it { is_expected.to have_many(:teachers) }
  end
end
