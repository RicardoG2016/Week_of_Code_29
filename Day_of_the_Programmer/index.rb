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

days = 256
cals = {jcal: 237, gcal: 243}

def inRange(y)
  return true if 1700 <= y && y <= 2700
end

def leapYr()
  return false
end


def format(day, month, year)
  finalDate = Time.new(year, month, day).strftime('%d.%m.%Y')
end

def dateCalc(cals, year)
  month = "09"
  if leapYr == false
    day = 256 - cals[:gcal]
  end 
  return format(day, month, year)
end


def date(cals, y)
  if inRange(y)
    p dateCalc(cals, y)
  else
    p "out of range"
  end
end

date(cals, 2017)

# p cals[:jcal]









