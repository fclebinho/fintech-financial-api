module Types
  module Queries
    class FetchAccount < Queries::BaseQuery
      type Types::AccountType, null: false
      argument :id, ID, required: true

      def resolve(id:)
        Account.find(id)
      rescue ActiveRecord::RecordNotFound => _e
        GraphQL::ExecutionError.new('Account does not exist.')
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end