InputTypes::ActivityInput = GraphQL::InputObjectType.define do
  name 'CreateAuthInput'

  argument :type,             !types.String,  as: :type
  argument :title,            !types.String,  as: :title
  argument :scheduledDate,    !types.String,  as: :schedule_date
  argument :duration,         !types.String,  as: :duration
  argument :status,           types.String,   as: :status
  argument :notes,            types.String,   as: :notes
end