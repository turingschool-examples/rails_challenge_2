require 'rails_helper'

describe User do

  describe 'validations' do

    it 'pass with a name' do
      user = User.new(name: 'name')
      expect(user).to be_valid
    end

    it 'fail without a name' do
      user = User.new
      expect(user).to be_invalid
    end

    describe 'relations' do

      it 'has many reviews' do
        user = create(:user)
        create(:review, user: user)
        expect(user.reviews.first).to be_a Review
      end

    end

  end

end
