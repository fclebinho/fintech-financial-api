module Types
  module Queries
    class FetchEntries < Types::Queries::BaseQuery

      type [Types::EntryType], null: false

      def resolve
        Entry.all.order(created_at: :desc)
      end
    end
  end
end