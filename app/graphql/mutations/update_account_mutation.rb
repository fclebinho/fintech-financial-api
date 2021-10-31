module Mutations
  class UpdateAccountMutation < Mutations::BaseMutation
    argument :params, Types::Input::Account::AccountUpdateInputType, required: true

    field :account, Types::AccountType, null: false

    def resolve(params:)
      account_params = Hash params

      account = Account.find(params[:id])
      account.update!(account_params)

      { account: account }
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Account does not exist.')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        " #{e.record.errors.full_messages.join(', ')}")
    end
  end
end