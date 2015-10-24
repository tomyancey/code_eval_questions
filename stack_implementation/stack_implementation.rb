=begin
STACK IMPLEMENTATION
CHALLENGE DESCRIPTION:


Write a program which implements a stack interface for integers. The interface should have ‘push’ and ‘pop’ functions. Your task is to ‘push’ a series of integers and then ‘pop’ and print every alternate integer.

INPUT SAMPLE:

Your program should accept a file as its first argument. The file contains a series of space delimited integers, one per line.

For example:

1 2 3 4
10 -2 3 4
OUTPUT SAMPLE:

Print to stdout every alternate space delimited integer, one per line.

For example:

4 2
4 -2
=end

def implement_stack(arr)
    print_arr = []
    until arr.empty?
        print_arr << arr.pop
        arr.pop unless arr.empty?
    end
    print_arr.join(" ")
end

File.open("stack_implementation.txt").each_line do |line|
    puts implement_stack(line.chomp.split(" "))
end