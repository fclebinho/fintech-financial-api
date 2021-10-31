module Types
  module Enums
    module Account
      class AccountStatusEnum < Types::Enums::BaseEnum
        value "PENDING", "A pending account"
        value "OPEN", "An open account"
        value "CLOSED", "A closed account"
      end
    end
  end
end