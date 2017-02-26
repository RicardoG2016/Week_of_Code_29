require 'pry'
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
square_drawn = false
w = 20
h = 16
circleX = 9
circleY = 6
r = 5
x1 = 16
y1 = 14
x3 = 8
y3 = 14
sqr_c_x = (x1 + x3) / 2
sqr_c_y = (y1 + y3) / 2
square_details = { :point1 => [x1, y1], :point2 => [], :point3 => [x3, y3], :point4 => [], :center => [sqr_c_x, sqr_c_y]}

canvas = Array.new(h) { Array.new(w, ".")}

def complete_square(square_details)
  x1 = square_details[:point1][0] 
  y1 = square_details[:point1][1]
  x3 = square_details[:point3][0] 
  y3 = square_details[:point3][1]
  center_x = square_details[:center][0]
  center_y = square_details[:center][1]

  slope_x = center_x - ( x1 < x3 ? x1 : x3 )
  slope_y = center_y - ( y1 < y3 ? y1 : y3 )
  slope_c = [slope_x, slope_y]

  x2 = center_x - (slope_y).abs 
  y2 = center_y - (slope_x).abs 
  
  x4 = center_x + (slope_y).abs 
  y4 = center_y + (slope_x).abs 

  square_details[:point2][0] = x2
  square_details[:point2][1] = y2
  square_details[:point4][0] = x4
  square_details[:point4][1] = y4
end

def in_circle(array, r, circleX, circleY)
  if r >= 0 && r <= 100 && circleX >= -100 && circleY >= -100 && circleX <= 200 && circleY <= 200
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
end

def x_test(array, x1, y1, x3, y3, h, w, square_drawn)
  if x1 == x3 
    mid_y = (y1 + y3) /2
    mid_x = x1
    dis_to_mid = ((mid_y).abs - (y1).abs)
    l_y = mid_y
    l_x = x1 - dis_to_mid
    r_x = x1 + dis_to_mid
    r_y = mid_y
    x_scan = y_test(array,l_x, l_y, r_x, r_y, h, w, square_drawn)
    square_drawn = true
    return x_scan
  else
    return array
  end
end

def y_test(array, x1, y1, x3, y3, h, w, square_drawn)
  z1 = y1
  if y1 == y3 && square_drawn == false
    count = (x1 - x3).abs + 1
    top = (count)/2
    beg = x1 < x3 ? x1 : x3
    i = 0

    if y1 - 1 >=0
      while i < top + 1 do
        j = i
        while  j < count do
          array[y1][beg + j] = "#"
          if z1 <= h-1
           array[z1][beg + j] = "#" 
          end
          j+=1
        end
        i+=1
        count-=1
        y1-= 1
        z1+= 1
      end
    end 
  square_drawn = true    
  end
  return array
end

# square_details = { :point1 => [x1, y1], :point2 => [x3, y3], :center => [sqr_c_x, sqr_c_y] }

def mid_points(array, square_details, square_drawn)
# points
  x1 = square_details[:point1][0] 
  y1 = square_details[:point1][1]
  x2 = square_details[:point2][0] 
  y2 = square_details[:point2][1]
  x3 = square_details[:point3][0] 
  y3 = square_details[:point3][1]
  x4 = square_details[:point4][0] 
  y4 = square_details[:point4][1]
# mid-points
  mid1x = (x1 + x2) / 2
  mid1y = (y1 + y2) / 2
  mid2x = (x2 + x3) / 2
  mid2y = (y2 + y3) / 2
  mid3x = (x3 + x4) / 2
  mid3y = (y3 + y4) / 2
  mid4x = (x1 + x4) / 2
  mid4y = (y1 + y4) / 2

  mid_x = [mid1x, mid2x, mid3x, mid4x].sort
  mid_y = [mid1y, mid2y, mid3y, mid4y].sort

if square_drawn == false
  array.each_with_index do |row, y|
    row.each_with_index do |point, x|
        if mid_x[0] < x && x < mid_x[3] && mid_y[0] <= y && y <= mid_y[3]
          point = "#"
        end
    end
  end
  return array
else
  return array
end
end

def square_test(array, x1, y1, x3, y3, h, w, square_details, square_drawn)
  if w >= 10 && h >= 10 && w <= 100 && h <= 100 && x1 >= -100 && y1 >= -100 && x3 >= -100 && y3 >= -100 && x1 <= 200 && y1 <= 200 && x3 <= 200 && y3 <= 200
    y_scanned_array = y_test(array, x1, y1, x3, y3, h, w, square_drawn)
    x_test_array = x_test(array, x1, y1, x3, y3, h, w, square_drawn)
    result = mid_points(x_test_array, square_details, square_drawn)

    result.each do |x|
      puts x.flatten.join
    end
  end
end


complete_square(square_details)
array_w_cir = in_circle(canvas, r, circleX, circleY)
square_test(array_w_cir, x1, y1, x3, y3, h, w, square_details, square_drawn)



