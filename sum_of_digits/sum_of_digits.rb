=begin
SUM OF DIGITS
CHALLENGE DESCRIPTION:


Given a positive integer, find the sum of its constituent digits.

INPUT SAMPLE:

The first argument will be a path to a filename containing positive integers, one per line. E.g.

23
496
OUTPUT SAMPLE:

Print to stdout, the sum of the numbers that make up the integer, one per line. E.g.

5
19
=end

file = File.open("sum_of_digits.txt")

def sum_of_digits(num_str)
    num_str.split("").map {|x| x.to_i }.reduce(:+)
end

file.each_line {|line| puts sum_of_digits(line) }