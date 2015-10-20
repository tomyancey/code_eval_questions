=begin
CHALLENGE DESCRIPTION:


Write a program which finds the next-to-last word in a string.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following

some line with text
another line
Each line has more than one word.

OUTPUT SAMPLE:

Print the next-to-last word in the following way.

with
another
=end

file = File.open "penultimate_word.txt"

file.each_line {|line| puts line.chomp.split(" ")[-2]}
