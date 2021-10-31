module Types
  module Input
    module Account
      class AccountUpdateInputType < Types::BaseInputObject
        argument :id, String, required: true
        argument :kind, Types::Enums::Account::AccountKindEnum, required: false
        argument :description, String, required: false
        argument :due_date, GraphQL::Types::ISO8601Date, required: false
        argument :amount, Float, required: false
        argument :status, Types::Enums::Account::AccountStatusEnum, required: false
        argument :account_id, String, required: false
      end
    end
  end
end