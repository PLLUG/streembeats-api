class Api::V1::UserSerializer < Api::V1::BaseSerializer
  attributes :username, :email, :first_name :last_name
end
