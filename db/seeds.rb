require_relative '../lib/bank_statement'

SEBA = BankStatement.new.cc_purchases_hash

SEBA.each do |transaction|
  Purchase.create(
      serial: transaction[:serial],
      date: transaction[:date],
      ammount: transaction[:ammount],
      vendor: transaction[:vendor],
      transaction_type: transaction[:transaction_type],
      location: transaction[:location],
      cardholder: transaction[:cardholder]
    )
end
