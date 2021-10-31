module Types
  module Input
    module Account
      class AccountAddInputType < Types::BaseInputObject
        argument :kind, Types::Enums::Account::AccountKindEnum, required: true
        argument :number, Int, required: true
        argument :title, String, required: true
        argument :description, String, required: true
      end
    end
  end
end