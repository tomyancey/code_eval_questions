=begin
CHALLENGE DESCRIPTION:


A number is a self-describing number when (assuming digit positions are labeled 0 to N-1), the digit in each position is equal to the number of times that that digit appears in the number.

INPUT SAMPLE:

The first argument is the pathname to a file which contains test data, one test case per line. Each line contains a positive integer. E.g.

2020
22
1210
OUTPUT SAMPLE:

If the number is a self-describing number, print out 1. If not, print out 0. E.g.

1
0
1
For the curious, here's how 2020 is a self-describing number: Position '0' has value 2 and there is two 0 in the number. Position '1' has value 0 because there are not 1's in the number. Position '2' has value 2 and there is two 2. And the position '3' has value 0 and there are zero 3's.
=end

file = File.open("self_describing_number.txt")

def self_describer?(num)
    num_arr = num.to_s.split("").map {|x| x.to_i }
    num_arr.each_with_index {|val,idx| return false if num_arr.count(idx) != val }
    true
end

file.each_line {|line| puts self_describer?(line.to_i) ? 1 : 0 }