=begin
ARRAY ABSURDITY
CHALLENGE DESCRIPTION:

Imagine we have an immutable array of size N which we know to be filled with integers ranging from 0 to N-2, inclusive. Suppose we know that the array contains exactly one duplicated entry and that duplicate appears exactly twice. Find the duplicated entry. (For bonus points, ensure your solution has constant space and time proportional to N)

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file is one test case. Ignore all empty lines. Each line begins with a positive integer(N) i.e. the size of the array, then a semicolon followed by a comma separated list of positive numbers ranging from 0 to N-2, inclusive. i.e eg.

5;0,1,2,3,0
20;0,1,10,3,2,4,5,7,6,8,11,9,15,12,13,4,16,18,17,14
OUTPUT SAMPLE:

Print out the duplicated entry, each one on a new line eg

0
4
=end

def duplicates_in_array_subset(k,arr)
    arr[0..k - 2].find {|val| arr.count(val) == 2 }
end

File.open("array_absurdity.txt").each_line do |line|
    k, arr = line.chomp.split(";")
    k = k.to_i
    arr = arr.split(",")
    puts duplicates_in_array_subset(k,arr)
end