class Resolvers::CreateActivity < GraphQL::Function
  description 'Create Activity'
  argument :params, InputTypes::Activity
  type Types::Activity

  def call(_obj, args, ctx)
    user = ctx[:current_user]
    params = args[:params].to_h
    ActivityCreator.new(params, user).perform
  end
end
