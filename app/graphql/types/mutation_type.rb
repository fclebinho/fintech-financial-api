module Types
  class MutationType < Types::BaseObject
    field :add_entry, mutation: Mutations::AddEntryMutation
    field :delete_entry, mutation: Mutations::DeleteEntryMutation
    field :update_entry, mutation: Mutations::UpdateEntryMutation
  end
end
