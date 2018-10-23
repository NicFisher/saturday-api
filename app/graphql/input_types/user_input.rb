InputTypes::UserInput = GraphQL::InputObjectType.define do
  name 'CreateUserInput'

  argument :email,      !types.String,  as: :email
  argument :password,   !types.String,  as: :password
  argument :firstName,  !types.String,  as: :first_name
  argument :lastName,   !types.String,  as: :last_name
end