=begin
CHALLENGE DESCRIPTION:


Given two integers N and M, count the number of prime numbers between N and M (both inclusive)

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers. E.g.

2,10
20,30
OUTPUT SAMPLE:

Print out the number of primes between N and M (both inclusive)

4
2
=end

def prime?(num)
	return false if num < 2
	(2..Math.sqrt(num)).each {|div| return false if num % div == 0}
	true
end

def primes_in_range(values)
	values.sort!
	total = 0
	n1, n2 = values[0], values[1]
	(n1..n2).each {|num| total += 1 if prime?(num) }
	total
end

File.open("counting_primes.txt").each_line do |line|
	values = line.chomp.split(",").map {|x| x.to_i }
	puts primes_in_range(values)
end