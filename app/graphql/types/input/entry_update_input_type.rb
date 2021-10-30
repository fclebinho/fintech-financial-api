module Types
  module Input
    class EntryUpdateInputType < Types::BaseInputObject
      argument :id, String, required: true
      argument :kind, Types::Enums::KindEnum, required: false
      argument :description, String, required: false
      argument :due_date, GraphQL::Types::ISO8601Date, required: false
      argument :amount, Float, required: false
      argument :status, Types::Enums::StatusEnum, required: false
    end
  end
end