module Types
  class MutationType < Types::BaseObject
    field :add_entry, mutation: Mutations::AddEntryMutation
    field :delete_entry, mutation: Mutations::DeleteEntryMutation
    field :update_entry, mutation: Mutations::UpdateEntryMutation

    field :add_account, mutation: Mutations::AddAccountMutation
    field :delete_account, mutation: Mutations::DeleteAccountMutation
    field :update_account, mutation: Mutations::UpdateAccountMutation
  end
end
