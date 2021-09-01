def fizzbuzz(num)
  if n % 15 == 0
    puts "FizzBuzz" 
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"
  else
    puts num 
  end
end
num = 15
(1...num).each do |n|
  puts fizzbuzz(n)
end
  