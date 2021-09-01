def bubble.sort(num)
  length = num.length
  (1..length).each do |i|   
    (1..(length-i)).each do |x|
      y = x - 1
      if num[y] > num[x] 
        tmp = num[y]
        num[y] = num[x]
        num[x] = tmp
        p tmp
      end
    end
  end
  num
end

 p bubble.sort([10, 8, 5, 2, 4, 11, 18, 20, 33])