=begin
CHALLENGE DESCRIPTION:

Print out the prime numbers less than a given number N. For bonus points your solution should run in N*(log(N)) time or better. You may assume that N is always a positive integer.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file is one test case. Each test case will contain an integer n < 4,294,967,295. E.g.

10
20
100
OUTPUT SAMPLE:

For each line of input, print out the prime numbers less than N, in ascending order, comma delimited. (There should not be any spaces between the comma and numbers) E.g.

2,3,5,7
2,3,5,7,11,13,17,19
2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97
=end

def prime?(num)
    return false if num < 2
    (2..Math.sqrt(num)).each {|div| return false if num % div == 0 }
    true
end

File.open("prime_numbers.txt").each_line do |line|
    max_val = line.chomp.to_i - 1
    prime_arr = []
    2.upto(max_val).each {|num| prime_arr << num if prime?(num) }
    puts prime_arr.join(",")
end
