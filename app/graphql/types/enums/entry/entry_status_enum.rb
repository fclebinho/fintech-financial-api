module Types
  module Enums
    module Entry
      class EntryStatusEnum < Types::Enums::BaseEnum
        value "PENDING", "A pending entry"
        value "CLOSED", "A closed entry"
      end
    end
  end
end