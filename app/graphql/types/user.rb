module Types
  User = GraphQL::ObjectType.define do
    name 'User'

    field :id,          types.ID,       property: :id
    field :firstName,   types.String,   property: :first_name
    field :lastName,    types.String,   property: :last_name
    field :email,       types.String,   property: :email

    connection :activities, Types::Activity.connection_type, property: :activities do
      resolve ->(obj, _args, _ctx) { obj.activities.where(status: 'active').order('created_at DESC, id') }
    end
  end
end
