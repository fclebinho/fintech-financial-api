module Types
  module Queries
    class FetchAccounts < Types::Queries::BaseQuery

      type [Types::AccountType], null: false

      def resolve
        Account.all.order(created_at: :desc)
      end
    end
  end
end