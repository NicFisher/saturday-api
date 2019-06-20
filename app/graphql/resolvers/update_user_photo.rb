class Resolvers::UpdateUserPhoto < GraphQL::Function
  description 'Update User Photo'
  argument :url, !types.String
  type Types::User

  def call(_obj, args, ctx)
    ctx[:current_user] if ctx[:current_user].update(photo: args[:url])
  end
end
