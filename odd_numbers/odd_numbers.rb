=begin
ODD NUMBERS
CHALLENGE DESCRIPTION:


Print the odd numbers from 1 to 99.

INPUT SAMPLE:

There is no input for this program.

OUTPUT SAMPLE:

Print the odd numbers from 1 to 99, one number per line. 
=end

(1..99).each {|num| puts num if num % 2 != 0 }