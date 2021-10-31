module Types
  module Enums
    module Account
      class AccountKindEnum < Types::Enums::BaseEnum
        value "OTHERS", "An other account"
        value "CHECKING", "A checking account"
        value "SAVINGS", "A savings account"
        value "INVESTMENT", "A investment account"
        value "CREDIT_CARD", "A credit card account"
        value "VOUCHER", "A voucher account"
      end
    end
  end
end