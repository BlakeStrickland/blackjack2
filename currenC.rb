#this application will covert currency one to another and determine if its low or high.

get currency
print out rates
choose current currency
choose wanted currency
print current amount and wanted amount
print if market is high low or average


currency_hash = {
  :USD = 1.00
  :EUR = 0.92445
  :GBP = 0.70259
  :INR = 67.7046
  :AUD = 1.42369
  :CAD = 1.42550
  :ZAR = 16.5105
  :NZD = 1.52969
  :JPY = 118.138
}

us aud cad nzd $
euro €
pound £
india rupee ₹
Zimbabwe Dollar Z $
Japan Yen ¥

if current_currency == :USD
  wanted_currency = current_amount * current_hash[:USD]
elsif current_currency == :EUR
  wanted_currency = current_amount * current_hash[:EUR]



 1 us dollar == .92445 euros

 1 euro == x pounds

 def convert(money, desired_type)
   #puts money.inspect
   start_amount = money.amount
   conversion_rate = @rate_exchange[desired_type] / @rate_exchange[money.type]
   new_amount = start_amount.to_f * conversion_rate
    new_amount, desired_type
 end
