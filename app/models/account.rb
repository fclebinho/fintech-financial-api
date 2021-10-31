class Account < ApplicationRecord
  enum kind: [ :OTHERS, :CHECKING, :SAVINGS, :INVESTMENT, :CREDIT_CARD, :VOUCHER ]  
  enum status: [ :PENDING, :OPEN, :CLOSED ]
  has_many :entries
end
