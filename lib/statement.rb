class statement

  def initialize(instance)
    @statement_class = Statement.new
  end

  def bank_statement(@statement_class)
    i = 0
    loop do 
      puts @statement[i]
      i += 1
      break if i > @statement.length
    end
  end

end