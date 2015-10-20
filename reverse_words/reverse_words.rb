=begin
INPUT SAMPLE:

The first argument is a file that contains multiple sentences, one per line. Empty lines are also possible.

For example:

Hello World
Hello CodeEval
OUTPUT SAMPLE:

Print to stdout each sentence with the reversed words in it, one per line. Empty lines in the input should be ignored. Ensure that there are no trailing empty spaces in each line you print.

For example:


World Hello
CodeEval Hello
=end

def reverse_words(str)
    str.split(" ").reverse.join(" ") 
end

File.open("reverse_words_data.txt").each_line {|line| puts reverse_words(line.chomp) }