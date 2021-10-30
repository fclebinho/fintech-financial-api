module Types
  module Input
    class EntryUpdateInputType < Types::BaseInputObject
      argument :id, String, required: true
      argument :kind, Types::Enums::KindEnum, required: true
      argument :description, String, required: true
      argument :due_date, GraphQL::Types::ISO8601Date, required: true
      argument :amount, Float, required: true
      argument :status, Types::Enums::StatusEnum, required: true
    end
  end
end