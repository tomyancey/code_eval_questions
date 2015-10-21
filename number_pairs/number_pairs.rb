=begin
NUMBER PAIRS
CHALLENGE DESCRIPTION:


You are given a sorted array of positive integers and a number 'X'. Print out all pairs of numbers whose sum is equal to X. Print out only unique pairs and the pairs should be in ascending order

INPUT SAMPLE:

Your program should accept as its first argument a filename. This file will contain a comma separated list of sorted numbers and then the sum 'X', separated by semicolon. Ignore all empty lines. If no pair exists, print the string NULL e.g.

1,2,3,4,6;5
2,4,5,6,9,11,15;20
1,2,3,4;50
OUTPUT SAMPLE:

Print out the pairs of numbers that equal to the sum X. The pairs should themselves be printed in sorted order i.e the first number of each pair should be in ascending order. E.g.

1,4;2,3
5,15;9,11
NULL		
=end

def pairs_of_sum(str_arr,sum)
	arr = str_arr.split(",").map {|x| x.to_i }
	sum = sum.to_i
	pairs = []
	(0..arr.size - 1).each do |first_idx|
		(first_idx + 1..arr.size - 1).each do |second_idx|
			pairs << [arr[first_idx],arr[second_idx]] if arr[first_idx] + arr[second_idx] == sum 
		end
	end
	pairs.empty? ? "NULL" : pairs.sort_by {|arr| arr[0] }.map {|x| x.join(",")}.join(";")
end

file = File.open "number_pairs.txt"
file.each_line do |line|
	arr,sum = line.chomp.split(";")
	puts pairs_of_sum(arr,sum)
end