=begin
CHALLENGE DESCRIPTION:

You’ve got a binary code which has to be buried among words in order to unconsciously pass the cipher. 
Create a program that would cover the word with a binary mask. If, while covering, a letter finds itself as 1, you have to change its register to the upper one, if it’s 0, leave it as it is. Words are always in lower case and in the same row with the binary mask.

INPUT SAMPLE:

The first argument is a path to a file. Each row contains a test case with a word and a binary code separated with space, inside of it. The length of each word is equal to the length of the binary code.

For example:



hello 11001
world 10000
cba 111
OUTPUT SAMPLE:

Print the encrypted words without binary code.

For example:

HEllO
World
CBA
CONSTRAINTS:

Words are from 1 to 20 letters long.
The number of test cases is 40.
=end

def string_mask(word,binary)
    binary = binary.to_s.split("").map! {|x| x.to_i }
    binary.each_with_index {|val,idx| word[idx] = word[idx].upcase if val == 1 }
    word
end

file = File.open("string_mask_data.txt")
file.each_line do |line|
    str, binary_val = line.chomp.split(" ")
    puts string_mask(str, binary_val)
end