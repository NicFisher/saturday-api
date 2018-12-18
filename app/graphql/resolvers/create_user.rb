class Resolvers::CreateUser < GraphQL::Function
  description 'Create User'
  argument :params, InputTypes::UserInput
  type Types::User

  def call(_obj, args, _ctx)
    User.create!(
      first_name: args[:params][:first_name],
      last_name: args[:params][:last_name],
      email: args[:params][:email],
      password: args[:params][:password]
    )
  end
end