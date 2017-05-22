require 'rails_helper'

describe User, type: :model do
  describe 'validations' do

    before do
      @user = User.create(first_name: 'Alex', last_name: 'Chew', email: 'alex@alex.com')
    end

    it 'can be created' do
      expect(@user).to be_valid
    end

    it 'cannot be created without a first name' do
      @user.first_name = nil
      expect(@user).not_to be_valid
    end

    it 'cannot be created without a last name' do
      @user.last_name = nil
      expect(@user).not_to be_valid
      end

    it 'cannot be created without a email' do
      @user.email = nil
      expect(@user).not_to be_valid
        end

    it 'cannot have a short first_name' do
      @user.first_name = 'a' * 2
      expect(@user).not_to be_valid
        end

    it 'cannot have a long first_name' do
      @user.first_name = 'a' * 25
      expect(@user).not_to be_valid
        end

    it 'cannot have a short last_name' do
          @user.last_name = 'a' * 2
          expect(@user).not_to be_valid
            end

    it 'cannot have a long last_name' do
          @user.last_name = 'a' * 25
          expect(@user).not_to be_valid
            end
  end
end
