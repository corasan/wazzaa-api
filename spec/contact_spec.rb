require "rails_helper"

RSpec.describe Contact, :type => :model do
    it "add contact" do
        user1 = User.create!(first_name: "Henry", last_name: "Paulino")
        user2 = User.create!(first_name: "Lala", last_name: "Paulino")
        contact = user1.contacts.create(:contact_id => user2.id)
        expect(contact.contact_id).to eq(user2.id)
    end
end
