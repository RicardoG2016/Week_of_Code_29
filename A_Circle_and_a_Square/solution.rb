# Provided code
# --------------------------------------------------
# w,h = gets.strip.split(' ')
# w = w.to_i
# h = h.to_i
# circleX,circleY,r = gets.strip.split(' ')
# circleX = circleX.to_i
# circleY = circleY.to_i
# r = r.to_i
# x1,y1,x3,y3 = gets.strip.split(' ')
# x1 = x1.to_i
# y1 = y1.to_i
# x3 = x3.to_i
# y3 = y3.to_i

# your code goes here

w = 20
h = 16
circleX = 9
circleY = 6
r = 5
x1 = 16
y1 = 14
x3 = 8
y3 = 14


canvas = Array.new(w) { Array.new(h, ".")}

def in_circle()
    if (r ** 2 <= ((arrayX - circleX) ** 2) + ((arrayY - circleY) ** 2)))
      return true
    end
end