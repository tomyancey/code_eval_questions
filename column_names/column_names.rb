=begin
COLUMN NAMES
SPONSORING COMPANY:

  

CHALLENGE DESCRIPTION:

Microsoft Excel uses a special convention to name its column headers. The first 26 columns use the letters 'A' to 'Z'. Then, Excel names its column headers using two letters, so that the 27th and 28th column are 'AA' and 'AB'. After 'ZZ', Excel uses three letters.

Write a function that takes as input the number of the column, and returns its header. The input will not ask for a column that would be greater than 'ZZZ'.

INPUT SAMPLE:

The first argument is a path to a file. Each line of the input file contains one test case represented by one integer.

52
3702
OUTPUT SAMPLE:

For each test case your program must print one line containing the Excel column heading corresponding to the integer in the input.

AZ
ELJ
CONSTRAINTS:

The number of test cases is 40.
The input will not ask for a column that would be greater than 'ZZZ'.
=end

def num_to_alph(num)
    num = num.to_i
    letters = ("A".."Z").to_a
    str = ""
    big_letter, mid_letter, little_letter = nil, nil, nil
    if num > 676
        big_letter = num / 676
        num %= 676
        big_letter -= 1 if num == 0
    end
    if num > 26
        mid_letter = num / 26
        num %= 26
        mid_letter -= 1 if num == 0
    end
    little_letter = num
    str << letters[big_letter - 1] unless big_letter.nil?
    str << letters[mid_letter - 1] unless mid_letter.nil? 
    str << letters[little_letter - 1]
    str
end

file = File.open "column_names.txt"
file.each_line {|line| puts num_to_alph(line.chomp) }
