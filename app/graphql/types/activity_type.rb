Types::ActivityType = GraphQL::ObjectType.define do
  name 'Activity'

  field :id,            types.String,       property: :id
  field :type,          types.String,       property: :type
  field :createdAt,     types.String,       property: :createdAt
  field :scheduledDate, types.String,       property: :scheduledDate
  field :duration,      types.String,       property: :duration
  field :status,        types.String,       property: :status
  field :title,         types.String,       property: :title
  field :notes,         types.String,       property: :notes
end