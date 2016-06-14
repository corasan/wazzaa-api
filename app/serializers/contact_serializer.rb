class ContactSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :contact_id
end
