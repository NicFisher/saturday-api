Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  # TODO: Remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end
  field :createUser, function: Resolvers::CreateUser.new
  field :createAuthToken, function: Resolvers::CreateAuthToken.new
  field :createActivity, function: Resolvers::CreateActivity.new
  field :updateActivity, function: Resolvers::UpdateActivity.new
  field :deleteActivity, function: Resolvers::DeleteActivity.new
  field :createSignedUrl, function: Resolvers::CreateSignedUrl.new
  field :updateUserPhoto, function: Resolvers::UpdateUserPhoto.new
end
