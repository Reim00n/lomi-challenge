class LoginSerializer
  include FastJsonapi::ObjectSerializer
  attributes :authentication_token,:email

end
