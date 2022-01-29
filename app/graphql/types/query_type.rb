module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :entries, resolver: Types::Queries::FetchEntries
    field :entryById, resolver: Types::Queries::FetchEntry

    field :accounts, resolver: Types::Queries::FetchAccounts
    field :accountById, resolver: Types::Queries::FetchAccount
  end
end
