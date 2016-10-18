require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Validations" do
    before do
      @user = User.create(
        name: "Bobby",
        email: "user@email.com",
        password: "abc",
        password_confirmation: "abc"
        )
    end
    it "should be a valid user" do
      expect(@user.password).to eq(@user.password_confirmation)
    end

    it "password should be a certain length" do
      expect(@user.password.length).to be >= 1
    end

    it "should be a unique email" do
      @user2 = User.create(
        name: "Susan",
        email: "susan@email.com",
        password: "abc",
        password_confirmation: "abc")
      expect(@user2).to be_valid
    end

    it "should authenticate on login" do
      @user = User.authenticate_with_credentials(" uSer@emAil.com  ", "abc")
      expect(@user).to be_an_instance_of(User)
    end


  end
end



