module Mutations
  class AddEntryMutation < Mutations::BaseMutation
    argument :params, Types::Input::EntryAddInputType, required: true

    field :entry, Types::EntryType, null: false

    def resolve(params:)      
      entry_params = Hash params

      begin
        entry = Entry.create!(entry_params)

        { entry: entry }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end