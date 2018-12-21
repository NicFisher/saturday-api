class Resolvers::DeleteActivity < GraphQL::Function
  description 'Delete Activity'
  argument :id, !types.ID
  type Types::Activity

  def call(_obj, args, ctx)
    user = ctx[:current_user]
    activity = user.activities.find_by(id: args[:id])
    return activity if activity.update(status: 'deleted')
  end
end
