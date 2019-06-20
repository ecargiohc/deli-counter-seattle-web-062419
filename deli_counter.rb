def line(katz_deli)
  if katz_deli.size > 0
    current_line = "The line is currently: " 
    katz_deli.each.with_index(1) do |person, index| 
      current_line << "#{index}. #{person} "
    end
  puts current_line.strip
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli, person)
  katz_deli << person
  puts "Welcome, #{person}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length > 0
  puts "Currently serving #{katz_deli.shift}."
  katz_deli.shift
  # if katz_deli.size > 0 
  #   now_line = "Currently serving "
  #   katz_deli.each do |index| 
  #     now_line << "#{index}."
  #   end
  #   puts now_line
  #   katz_deli.shift
  else  
    puts "There is nobody waiting to be served!"
  end
end