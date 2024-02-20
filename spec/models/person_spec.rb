require 'rails_helper'
RSpec.describe Person, type: :model do
    describe 'validations' do
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:name) }
      it { should validate_uniqueness_of(:email) }
    end
  
    describe 'associations' do
      it { should have_one(:person_detail).dependent(:destroy) }
    end
#   end

end
