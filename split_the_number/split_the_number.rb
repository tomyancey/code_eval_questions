=begin
CHALLENGE DESCRIPTION:

You are given a number N and a pattern. The pattern consists of lowercase latin letters and one operation "+" or "-". The challenge is to split the number and evaluate it according to this pattern e.g. 
1232 ab+cd -> a:1, b:2, c:3, d:2 -> 12+32 -> 44

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line of the file is a test case, containing the number and the pattern separated by a single whitespace. E.g.

3413289830 a-bcdefghij
776 a+bc
12345 a+bcde
1232 ab+cd
90602 a+bcde
OUTPUT SAMPLE:

For each test case print out the result of pattern evaluation. E.g.

-413289827
83
2346
44
611
Constraints: 
N is in range [100, 1000000000]
=end


def split_the_number(str,key)
    operator,idx = nil, nil
    key.split("").each_with_index { |char,i| operator, idx = char.match(/\+|\-/), i if char.match(/\+|\-/) }
    num1, num2 = str.split("").insert(idx,"|").join("").split("|").map {|x| x.to_i }
    #returns the first and only instance of matchdata
    operator[0] == "+" ? num1 + num2 : num1 - num2
end

File.open("split_the_number.txt").each_line do |line|
    string, sequence = line.chomp.split(" ")
    puts split_the_number(string, sequence)
end