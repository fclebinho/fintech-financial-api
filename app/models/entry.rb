class Entry < ApplicationRecord
  enum kind: [ :DEBIT , :CREDIT ]
  enum status: [ :PENDING , :CLOSED ]
end
