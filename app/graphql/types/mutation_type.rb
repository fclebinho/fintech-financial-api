module Types
  class MutationType < Types::BaseObject
    field :add_entry, mutation: Mutations::AddEntry
    field :delete_entry, mutation: Mutations::DeleteEntry
    field :update_entry, mutation: Mutations::UpdateEntry
  end
end
