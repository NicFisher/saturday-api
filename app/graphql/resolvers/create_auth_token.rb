class Resolvers::CreateAuthToken < GraphQL::Function
  description 'Create Auth Token'
  argument :params, InputTypes::AuthInput
  type Types::AuthType

  def call(_obj, args, _ctx)
    params = args[:params].to_h
    @user = User.find_by(email: params["email"])
    return GraphQL::ExecutionError.new('User Does Not Exist') unless @user
    return GraphQL::ExecutionError.new('Incorrect Email/Password') unless @user.valid_password?(params["password"])
    authentication_token = @user.authentication_token
    return OpenStruct.new(authentication_token: authentication_token)
  end
end