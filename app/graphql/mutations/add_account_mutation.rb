module Mutations
  class AddAccountMutation < Mutations::BaseMutation
    argument :params, Types::Input::Account::AccountAddInputType, required: true

    field :account, Types::AccountType, null: false

    def resolve(params:)      
      account_params = Hash params

      begin
        account = Account.create!(account_params)

        { account: account }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end