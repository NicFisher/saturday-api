class Resolvers::CreateActivity < GraphQL::Function
  description 'Create Activity'
  argument :params, InputTypes::ActivityInput
  type Types::AuthType

  def call(_obj, args, _ctx)

  end
end