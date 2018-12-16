module InputTypes
  Activity = GraphQL::InputObjectType.define do
    name 'CreateActivityInput'

    argument :kind,             !types.String,  as: :kind
    argument :title,            !types.String,  as: :title
    argument :scheduledDate,    !types.String,  as: :scheduled_date
    argument :duration,         !types.String,  as: :duration
    argument :status,           types.String,   as: :status
    argument :notes,            types.String,   as: :notes
  end
end
