module InputTypes
  UpdateActivity = GraphQL::InputObjectType.define do
    name 'UpdateActivityInput'

    argument :id,               !types.String,  as: :id
    argument :kind,             types.String,   as: :kind
    argument :title,            types.String,   as: :title
    argument :scheduledDate,    types.String,   as: :scheduled_date
    argument :duration,         types.String,   as: :duration
    argument :status,           types.String,   as: :status
    argument :description,      types.String,   as: :description
  end
end
