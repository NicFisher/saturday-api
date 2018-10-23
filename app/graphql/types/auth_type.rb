Types::AuthType = GraphQL::ObjectType.define do
  name 'Auth'

  field :authenticationToken,          types.String,       property: :authentication_token
end