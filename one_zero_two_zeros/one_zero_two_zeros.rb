=begin
CHALLENGE DESCRIPTION:

Our agent uncovered a global criminal money-laundering network that used offshore companies to defraud international organizations of total $1,000,000,000! The agent changes his location each hour, but he manages to send us the code that we need to decipher. 
Deciphering code includes many stages, and you are taking part in one of them. Therefore, your task is the following: you have two numbers – the first one is the number of zeros in a binary code and the second one shows the range from 1 to this number, where you have to find these zeros. 
For example, for the given numbers 2 and 4, you convert all numbers from 1 to 4 inclusive into the binary system. As a result, you get 1, 10, 11, and 100. As the first given number is 2, this means that we are looking for numbers with two zeros, so only 100 suits us. Hence, the result will be 1: there is only one number with two zeros.

INPUT SAMPLE:

The first argument is a path to a file. Each line includes a test case with two numbers: the first one is the number of zeros in a binary code that we need to find and the second one is the range from 1 to this number where you have to find these zeros.

For example:

1 8
2 4
OUTPUT SAMPLE:

Print the total number of numerals that contain the needed amount of zeros in a binary system.

For example:

3
1
CONSTRAINTS:

Range can be from 5 to 1000.
Number of zeros does not exceed the length of binary code number.
The number of test cases is 40.
=end

def count_of_matches(zero_count, max_range)
    total = 0
    (1..max_range).each {|val| total += 1 if val.to_s(2).count("0") == zero_count }
    total
end

File.open("one_zero_two_zeros.txt").each_line do |line|
    zero_val, upto_val = line.chomp.split(" ").map {|x| x.to_i }
    puts count_of_matches(zero_val, upto_val)
end
    