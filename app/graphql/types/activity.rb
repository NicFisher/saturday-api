module Types
  Activity = GraphQL::ObjectType.define do
    name 'Activity'

    field :id,            types.String,       property: :id
    field :kind,          types.String,       property: :kind
    field :createdAt,     types.String,       property: :created_at
    field :scheduledDate, types.String,       property: :scheduled_date
    field :duration,      types.String,       property: :duration
    field :status,        types.String,       property: :status
    field :title,         types.String,       property: :title
    field :description,   types.String,       property: :description
  end
end
