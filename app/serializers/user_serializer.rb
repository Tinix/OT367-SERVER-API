class UserSerializer
  include JSONAPI::Serializer
  attributes :email, :first_name, :last_name, :role_id
end
