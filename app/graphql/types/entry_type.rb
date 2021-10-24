module Types
  class EntryType < Types::BaseObject
    field :id, String, null: true
    field :kind, Types::Enums::KindEnum, null: true
    field :description, String, null: true
    field :due_date, GraphQL::Types::ISO8601Date, null: true
    field :amount, Float, null: true
    field :status, Types::Enums::StatusEnum, null: true
    field :created_at, GraphQL::Types::ISO8601Date, null: true
    field :updated_at, GraphQL::Types::ISO8601Date, null: true
  end
end
