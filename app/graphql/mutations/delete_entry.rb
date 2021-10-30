module Mutations
  class DeleteEntry < Mutations::BaseMutation
    # Just returning id is okay
    field :id, ID, null: true

    argument :id, ID, required: true

    def resolve(id:) 
      entry = Entry.find(id)
      entry.destroy

      { id: id }
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Entry does not exist.')
    end
  end
end