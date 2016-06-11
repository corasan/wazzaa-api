class UserSerializer < ActiveModel::Serializer
  attributes :id, :provider, :name, :first_name, :last_name, :email, :uid
end
