#sudo code
# y must be between 1700 and 2700
# if y is < 1918 use julian calendar
# if y is >=1919 use gregorian calendar
#if y = 1918 than jan 32th = feb 14th then use the gregorian calendar after that
# if leap year = true feb.length = 29 else feb.length =28

#Julian Calendar leap year
#if julian year % 4 equals 0 than it's a leap year.

#Gregorian Calendar leap year
#if gregorian year % 400 equals 0 OR % 4 && % 100 > 0

# Initial Setup
# --------------------------------------------------
y = gets.strip.to_i

days = 256
cals = {j_cal: 237, g_cal: 243}

def inRange(y)
  return true if 1700 <= y && y <= 2700
end

# Leap year logic
# --------------------------------------------------

def leapYr(y)
  if y <= 1918
   return true if y % 4 == 0
  elsif y >= 1919
    if y % 400 == 0 || y % 4 == 0 && y % 100 != 0
      return true
    end
  end
end

# --------------------------------------------------

def format(day, month, year)
  finalDate = Time.new(year, month, day).strftime('%d.%m.%Y')
end

def dateCalc(cals, year)
  month = "09"
  if year >= 1919
      day = 256 - cals[:g_cal]
  elsif year == 1918
      day = 256 - 231
  elsif year <= 1917
      day = 256 - cals[:j_cal]
    else
  end 
  if leapYr(year) == true
    day -= 1
  end
  return format(day, month, year)
end

def date(cals, y)
  if inRange(y)
    return dateCalc(cals, y)
  end
end

# Running code below
# --------------------------------------------------

print date(cals, y)









