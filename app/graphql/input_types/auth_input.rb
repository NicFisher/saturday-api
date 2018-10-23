InputTypes::AuthInput = GraphQL::InputObjectType.define do
  name 'CreateAuthInput'

  argument :email,      !types.String,  as: :email
  argument :password,   !types.String,  as: :password
end