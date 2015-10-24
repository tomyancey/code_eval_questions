=begin
REVERSE GROUPS
SPONSORING COMPANY:

  

CHALLENGE DESCRIPTION:


Given a list of numbers and a positive integer k, reverse the elements of the list, k items at a time. If the number of elements is not a multiple of k, then the remaining items in the end should be left as is.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file contains a list of numbers and the number k, separated by a semicolon. The list of numbers are comma delimited. E.g.

1,2,3,4,5;2
1,2,3,4,5;3
OUTPUT SAMPLE:

Print out the new comma separated list of numbers obtained after reversing. E.g.

2,1,4,3,5
3,2,1,4,5

=end

def reverse_groups(arr,k)
    new_arr = []
    arr.each_slice(k) {|rev| new_arr << rev.reverse.join(",") if rev.size == k }
    if arr.size % k != 0
        arr[arr.size - (arr.size % k )..arr.size - 1].each {|val| new_arr << val }
    end
    new_arr.join(",")
end

file = File.open "reverse_groups.txt"
file.each_line do |line|
    arr, k = line.chomp.split(";")
    arr = arr.split(",")
    k = k.to_i
    puts reverse_groups(arr, k)
end