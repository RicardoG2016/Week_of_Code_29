require 'prime'

# first,last = gets.strip.split(' ')
# first = first.to_i
# last = last.to_i
# your code goes here

first = 1
last = 100

primes = []
prime_digits = []

def edge_cases(first, last)
  return true if (1 <= first && first <= last && last <= (10**15) && last - first <= (10**9))
end

(first...last).each do |int|
  if int > 1 && Prime.prime?(int)
    primes.push(int)
  end
end

primes.each do |num|
  str_num = num.to_s
  if (str_num.include? "1") == false
    prime_digits.push(num.to_s.split('').freeze)
  end
end

def filter(prime_digits)
    prime_digits.each do |digits|
      if digits.length == 1
        if digits[0] == 4 || digits[0] == 6 || digits[0] == 8 || digits[0] == 9 || Prime.prime?(digits[0].to_i) == false
          prime_digits.delete(digits)
        end
      else
        digits.each do |d|
          dig = d.to_i
          if  dig == 4 || dig == 6 || dig == 8 || dig == 9
            prime_digits.delete(digits)
          elsif Prime.prime?dig
          else 
            prime_digits.delete(digits)
          end
        end
      end
    end
end


if edge_cases(first, last)
  20.times {filter(prime_digits)}
end

print prime_digits.length
