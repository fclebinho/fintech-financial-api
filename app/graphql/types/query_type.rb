module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :getEntries, resolver: Types::Queries::FetchEntries
    field :getEntryById, resolver: Types::Queries::FetchEntry

    field :getAccounts, resolver: Types::Queries::FetchAccounts
    field :getAccountById, resolver: Types::Queries::FetchAccount
  end
end
