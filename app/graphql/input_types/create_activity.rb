module InputTypes
  CreateActivity = GraphQL::InputObjectType.define do
    name 'CreateActivityInput'

    argument :kind,             !types.String,  as: :kind
    argument :title,            !types.String,  as: :title
    argument :scheduledDate,    !types.String,  as: :scheduled_date
    argument :duration,         !types.String,  as: :duration
    argument :status,           types.String,   as: :status
    argument :description,      types.String,   as: :description
  end
end
