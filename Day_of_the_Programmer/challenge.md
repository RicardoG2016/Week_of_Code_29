Marie invented a Time Machine and wants to test it by time-traveling to visit Russia on the Day of the Programmer (the  day of the year) during a year in the inclusive range from  to .

From  to , Russia's official calendar was the Julian calendar; since  they used the Gregorian calendar system. The transition from the Julian to Gregorian calendar system occurred in , when the next day after January  was February . This means that in , February  was the  day of the year in Russia.

In both calendar systems, February is the only month with a variable amount of days; it has days during a leap year, and  days during all other years. In the Julian calendar, leap years are divisible by ; in the Gregorian calendar, leap years are either of the following:

Divisible by .
Divisible by  and not divisible by .
Given a year, , find the date of the  day of that year according to the official Russian calendar during that year. Then print it in the format dd.mm.yyyy, where dd is the two-digit day, mm is the two-digit month, and yyyy is .


Explanation 1

Year y=2016 is a leap year, so February 29th has  days but all the other months have the same number of days as in 2017. When we sum the total number of days in the first eight months, we get 31+29+31+30+31+30+31+31=244. Day of the Programmer is the 256th day, so then calculate 256-244=12 to determine that it falls on day 12 of the 9th month (September). We then print the full date in the specified format, which is 12.09.2016.