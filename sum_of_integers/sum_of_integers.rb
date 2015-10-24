=begin
SUM OF INTEGERS
CHALLENGE DESCRIPTION:


Write a program to determine the largest sum of contiguous integers in a list.

INPUT SAMPLE:

The first argument is a path to a filename containing a comma-separated list of integers, one per line.

For example:

-10,2,3,-2,0,5,-15
2,3,-2,-1,10
OUTPUT SAMPLE:

Print to stdout the largest sum. In other words, of all the possible contiguous subarrays for a given array, find the one with the largest sum, and print that sum.

For example:

8
12
=end

def largest_sum(arr)
    max = nil
    (0..arr.size - 1).each do |idx|
        (1..arr.size - idx).each do |slice_val|
            sum_of_portion = arr[idx..arr.size - 1][0..slice_val - 1].reduce(:+)
            max = sum_of_portion if max.nil?
            max = sum_of_portion if sum_of_portion > max 
        end
    end
    max
end

file = File.open "sum_of_integers.txt"
file.each_line do |line| 
    arr = line.chomp.split(",").map {|x| x.to_i }
    puts largest_sum(arr)
end