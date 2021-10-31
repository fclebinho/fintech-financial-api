module Types
  module Input
    module Entry
      class EntryAddInputType < Types::BaseInputObject
        argument :kind, Types::Enums::Entry::EntryKindEnum, required: true
        argument :description, String, required: true
        argument :due_date, GraphQL::Types::ISO8601Date, required: true
        argument :amount, Float, required: true
        argument :account_id, String, required: true
      end
    end
  end
end