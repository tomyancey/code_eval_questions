=begin
LONGEST WORD
CHALLENGE DESCRIPTION:

In this challenge you need to find the longest word in a sentence. If the sentence has more than one word of the same length you should pick the first one.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following

some line with text
another line
Each line has one or more words. Each word is separated by space char.

OUTPUT SAMPLE:

Print the longest word in the following way.

some
another

=end

def longest_word(str)
    longest_length = 0
    longest_word = ""

    str.split(" ").each {|word| longest_length, longest_word = word.length, word if word.length > longest_length }
    longest_word
end

File.open("longest_word.txt").each_line {|line| puts longest_word(line.chomp)}

