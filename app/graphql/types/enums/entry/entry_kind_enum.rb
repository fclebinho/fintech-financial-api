module Types
  module Enums
    module Entry
      class EntryKindEnum < Types::Enums::BaseEnum
        value "DEBIT", "A negative entry"
        value "CREDIT", "A positive entry"
      end
    end
  end
end