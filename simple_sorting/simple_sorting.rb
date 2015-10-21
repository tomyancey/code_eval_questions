=begin
CHALLENGE DESCRIPTION:


Write a program which sorts numbers.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following

70.920 -38.797 14.354 99.323 90.374 7.581
-37.507 -3.263 40.079 27.999 65.213 -55.552
OUTPUT SAMPLE:

Print sorted numbers in the following way. Please note, that you need to print the numbers till the 3rd digit after the dot including trailing zeros.

-38.797 7.581 14.354 70.920 90.374 99.323
-55.552 -37.507 -3.263 27.999 40.079 65.213
=end

file = File.open("simple_sorting.txt")

def proper_format(num)
    sprintf('%.3f', num)
end

file.each_line do |line|
    arr = line.split(" ").map {|x| x.to_f}.sort 
    puts arr.map {|x| proper_format(x) }.join(" ")
end
