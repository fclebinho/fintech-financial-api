module Types
  class AccountType < Types::BaseObject
    field :id, String, null: true
    field :kind, Types::Enums::Account::AccountKindEnum, null: true
    field :number, Int, null: true
    field :title, String, null: true
    field :description, String, null: true
    field :status, Types::Enums::Account::AccountStatusEnum, null: true
    field :entries, [Types::EntryType], null: true
    field :created_at, GraphQL::Types::ISO8601Date, null: true
    field :updated_at, GraphQL::Types::ISO8601Date, null: true
  end
end
