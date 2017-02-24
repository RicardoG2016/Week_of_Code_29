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
rows = h

canvas = Array.new(h) { Array.new(w, ".")}

def in_sqr(array, x1, y1, x3, y3, h)
  y2 = y1
  if y1 == y3
    count = (x1 - x3).abs + 1
    top = (count)/2
    beg = x1 < x3 ? x1 : x3
    i = 0

    if y1 - 1 >=0
      while i < top + 1 do
        j = i
        while  j < count do
          array[y1][beg + j] = "#"
          if y2 < h
           array[y2][beg + j] = "#" 
          end
          j+=1
        end
        i+=1
        count-=1
        y1-= 1
        y2+= 1
      end
    end     
  end
  p array
end

def in_circle(array, r, circleX, circleY)
  r_sq = r ** 2
  array.each_index { |y| 
    array[y].each_index { |x|
      arrayX = x
      arrayY = y
      x_net_sq = (arrayX - circleX) ** 2
      y_net_sq = (arrayY - circleY) ** 2
    if r_sq >= x_net_sq + y_net_sq
      array[y][x] = "#"
    end
    }
  }
end

newArray = in_circle(canvas, r, circleX, circleY)

in_sqr(newArray, x1, y1, x3, y3, h)