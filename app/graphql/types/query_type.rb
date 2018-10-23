Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :viewer, Types::UserType do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, arg, ctx) { ctx[:current_user] }
  end

end
