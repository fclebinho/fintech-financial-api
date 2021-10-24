module Types
  module Enums
    class StatusEnum < Types::Enums::BaseEnum
      value "PENDING", "A pending entry"
      value "CLOSED", "A closed entry"
    end
  end
end