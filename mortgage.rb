def provide_mortgage?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  property_value <= 650000 ? min_deposit = 0.05 : min_deposit = 0.20 # 20%
  max_multiplier = 5 # how many annual incomes can be borrowed
  return true if deposit/property_value >= 0.75
  deposit >= property_value * min_deposit && 
      salary * max_multiplier >= loan_amount
end

puts provide_mortgage?(25000, 30000, 150000)
