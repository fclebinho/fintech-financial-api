module Types
  module Input
    class EntryAddInputType < Types::BaseInputObject
      argument :kind, Types::Enums::KindEnum, required: true
      argument :description, String, required: true
      argument :due_date, GraphQL::Types::ISO8601Date, required: true
      argument :amount, Float, required: true
    end
  end
end