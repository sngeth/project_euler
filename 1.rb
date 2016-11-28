#If we list all natural numbers below 10 that are multiples of 3 or 5, we get 3,
#5 ,6, and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000
sum = 0

(1..999).each do |num|
  sum += num if num % 3 == 0 || num % 5 == 0
end

puts sum #233168
