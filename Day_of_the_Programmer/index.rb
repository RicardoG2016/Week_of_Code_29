y = gets.strip.to_i

if y < 1918
  if y % 4 == 0
    puts "12.09." + "#{y}"
  else
    puts "13.09." + "#{y}"
  end
elsif y > 1918
  if y % 400 == 0 || y % 4 == 0
    puts "12.09." + "#{y}"
  elsif y % 100 == 0 
    puts "13.09." + "#{y}"
  else
    puts "13.09." + "#{y}"
  end
end
  puts "26.09." + "#{y}"
end