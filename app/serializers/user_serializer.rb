class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :role, :image_url
end
