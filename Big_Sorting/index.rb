# Provided code
# --------------------------------------------------
n = gets.strip.to_i
unsorted = Array.new(n)
for unsorted_i in (0..n-1)
    unsorted[unsorted_i] = gets.strip
end

# your code goes here
# --------------------------------------------------

def in_range(n)
  if 1 <= n && n <= 2 * (10 ** 5)
    return true
  end
end

def sort(n, array)
  if in_range(n)
    for i in (0..array.length-1)
      array[i] = array[i].to_i
    end
    puts array.sort
  end
end

sort(n, unsorted)
