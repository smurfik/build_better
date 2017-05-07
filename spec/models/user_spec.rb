require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :users
  let!(:user) { users(:user) }

  describe ".validates" do
    context "when email is nil" do
      it "is invalid" do
        user.update(email: nil)
        expect(user.errors[:email]).to include "can't be blank"
      end
    end

    context "when username is nil" do
      it "is invalid" do
        user.update(username: nil)
        expect(user.errors[:username]).to include "can't be blank"
      end
    end

    it 'is invalid if email does not have @' do
      user.update(email: 'test.com')
      expect(user.errors[:email]).to include "is invalid"
    end
  end
end
