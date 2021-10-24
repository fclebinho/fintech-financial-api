module Types
  class MutationType < Types::BaseObject
    field :entry, mutation: Mutations::AddEntry
  end
end
