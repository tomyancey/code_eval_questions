def palindrome?(num)
    num.to_s == num.to_s.reverse
end

def prime?(num)
    return false if num < 2
    (2..num/2).each {|div| return false if num % div == 0 }
    true
end

1000.downto(1).each do |number|
    if palindrome?(number) && prime?(number)
        print number
        break
    end
end
