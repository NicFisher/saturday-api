Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :viewer, Types::User do
    resolve -> (_obj, _arg, ctx) { ctx[:current_user] }
  end
end
