require "rails_helper"

RSpec.describe User, :type => :model do
    it "creates a user" do
        user = User.create!(first_name: "Henry", last_name: "Paulino", name: "Henry Paulino",
        email: "henrypl360@gmail.com", password: "123456", uid: "fbsb12r4hrrfgujhw_$")
        expect(User.find_by(:first_name=>"Henry")).to eq(user)
    end
end
