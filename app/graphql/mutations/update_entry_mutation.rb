module Mutations
  class UpdateEntryMutation < Mutations::BaseMutation
    argument :params, Types::Input::Entry::EntryUpdateInputType, required: true

    field :entry, Types::EntryType, null: false

    def resolve(params:)
      entry_params = Hash params

      entry = Entry.find(params[:id])
      entry.update!(entry_params)

      { entry: entry }
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Entry does not exist.')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        " #{e.record.errors.full_messages.join(', ')}")
    end
  end
end