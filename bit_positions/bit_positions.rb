=begin
CHALLENGE DESCRIPTION:


Given a number n and two integers p1,p2 determine if the bits in position p1 and p2 are the same or not. Positions p1 and p2 are 1 based.

INPUT SAMPLE:

The first argument will be a path to a filename containing a comma separated list of 3 integers, one list per line. E.g.

86,2,3
125,1,2
OUTPUT SAMPLE:

Print to stdout, 'true'(lowercase) if the bits are the same, else 'false'(lowercase). E.g.

true
false
=end

file = File.open "bit_positions.txt"


file.each_line do |line|
    num, p1, p2 = line.chomp.split(",").map {|x| x.to_i }
    binary_val = num.to_s(2)
    puts binary_val[-p1] == binary_val[-p2]
    
end
    