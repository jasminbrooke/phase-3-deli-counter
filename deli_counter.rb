def line(customers)
    if customers.empty?
        puts "The line is currently empty."
    else
        line = ''
        customers.each_with_index{ |c, index| line += "#{index + 1}. #{c} " }
        puts "The line is currently: #{line.strip}"
    end
end

def take_a_number(customers, person)
    customers.push(person)
    puts "Welcome, #{person}. You are number #{customers.length} in line."
end

def now_serving(customers)
    if customers.empty?
       puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{customers[0]}."
        customers.shift
    end
end