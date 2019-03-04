class Resolvers::UpdateActivity < GraphQL::Function
  description 'Update Activity'
  argument :params, InputTypes::UpdateActivity
  type Types::Activity

  def call(_obj, args, ctx)
    params = args[:params].to_h
    activity = ctx[:current_user].activities.find_by(id: params["id"])
    ActivityUpdater.new(params, activity).perform
  end
end
