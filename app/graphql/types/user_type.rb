Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :id,          types.ID,       property: :id
  field :firstName,   types.String,   property: :first_name
  field :lastName,    types.String,   property: :last_name
  field :email,       types.String,   property: :email
end