=begin
FIRST NON-REPEATED CHARACTER
CHALLENGE DESCRIPTION:


Write a program which finds the first non-repeated character in a string.

INPUT SAMPLE:

The first argument is a path to a file. The file contains strings.

For example:

yellow
tooth

OUTPUT SAMPLE:

Print to stdout the first non-repeated character, one per line.

For example:

y
h

=end

def first_non_repeat(str)
	str_arr = str.split("")
	unique_el = str_arr.uniq
	no_repeats = str_arr.collect {|letter| letter if str_arr.count(letter) < 2 }.compact
	str_arr.find {|letter| no_repeats.include?(letter)}
end

file = File.open("first_non_repeated_characters.txt")
file.each_line {|line| puts first_non_repeat(line.chomp)}