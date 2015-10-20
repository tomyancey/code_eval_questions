=begin
Challenge Description:

You have a string composed of the following symbols: '>', '<', and '-'. Your task is to find, count, and print to the output a number of arrows in the string. An arrow is a set of the following symbols: '>>-->' or '<--<<'.
Note that one character may belong to two arrows at the same time. Such example is shown in the line #1.
Input sample:

The first argument is a path to a file. Each line includes a test case with a string of different length from 10 to 250 characters. The string consists of '>', '<', and '-' symbols.

For example:
<--<<--<<
<<>>--><--<<--<<>>>--><
<-->>

Output sample:

Print the total number of found arrows for each test case.
For example:

2
4
0

Constraints:

    An arrow is a set of the following symbols: '>>-->' or '<--<<'.
    One symbol may belong to two arrows at the same time.
    The number of test cases is 40.	
	
=end

file = File.open("strings_and_arrows.txt")

def count_of_arrows(str)
	arrow1 = ">>-->"
	arrow2 = "<--<<"
	idx = 0
	total = 0
	until idx >= str.length - 4
		total += 1 if str[idx..idx + 4] == arrow1 
		total += 1 if str[idx..idx + 4] == arrow2
		idx += 1
	end
	total
end

file.each_line {|line| puts count_of_arrows(line)}


