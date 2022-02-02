class Printer

  def bank_statement(balance, statement)
    puts "date||credit||debit||balance"
    statement.each do |line|
      p line.values.map!{ |element| element.to_s}.join(" || ")
    end
  end

end