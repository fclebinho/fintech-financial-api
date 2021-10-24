module Types
  module Queries
    class FetchEntry < Queries::BaseQuery
      type Types::EntryType, null: false
      argument :id, ID, required: true

      def resolve(id:)
        Entry.find(id)
      rescue ActiveRecord::RecordNotFound => _e
        GraphQL::ExecutionError.new('Entry does not exist.')
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end