class Entry < ApplicationRecord
  enum kind: [ :DEBIT , :CREDIT ]
  enum status: [ :PENDING , :CLOSED ]
  
  validates :description, length: { minimum: 5 }, allow_blank: false
end
