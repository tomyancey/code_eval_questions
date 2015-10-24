=begin
TRAILING STRING
CHALLENGE DESCRIPTION:


There are two strings: A and B. Print 1 if string B occurs at the end of string A. Otherwise, print 0.

INPUT SAMPLE:

The first argument is a path to the input filename containing two comma-delimited strings, one per line. Ignore all empty lines in the input file.

For example:

Hello World,World
Hello CodeEval,CodeEval
San Francisco,San Jose

OUTPUT SAMPLE:

Print 1 if the second string occurs at the end of the first string. Otherwise, print 0.

For example:

1
1
0
=end

def trailing_string?(string1, string2)
    false if string2.length > 1
    string1.reverse[0..string2.size - 1] == string2.reverse
end

file = File.open "trailing_string.txt"
file.each_line do |line|
    string1, string2 = line.chomp.split(",")
    puts trailing_string?(string1, string2) ? 1 : 0
end