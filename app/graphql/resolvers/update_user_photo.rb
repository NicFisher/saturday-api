class Resolvers::UpdateUserPhoto < GraphQL::Function
  description 'Update User Photo'
  argument :url, !types.String
  type types.String

  def call(_obj, args, ctx)
    ctx[:current_user].update(photo: args[:url])
  end
end
