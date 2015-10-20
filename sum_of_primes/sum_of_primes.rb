def prime?(num)
    (2..Math.sqrt(num)).each do |div|
        return false if num % div == 0
    end
    true
end

number = 2
total = 0
count_of_total = 0

until count_of_total >= 1000
    if prime?(number)
        total += number
        count_of_total += 1
    end
    number += 1
end
puts total

