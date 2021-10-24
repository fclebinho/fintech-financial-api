module Types
  module Enums
    class KindEnum < Types::Enums::BaseEnum
      value "DEBIT", "A negative entry"
      value "CREDIT", "A positive entry"
    end
  end
end