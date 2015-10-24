=begin
REMOVE CHARACTERS
CHALLENGE DESCRIPTION:


Write a program which removes specific characters from a string.

INPUT SAMPLE:

The first argument is a path to a file. The file contains the source strings and the characters that need to be scrubbed. Each source string and characters you need to scrub are delimited by comma.

For example:

how are you, abc
hello world, def
OUTPUT SAMPLE:

Print to stdout the scrubbed strings, one per line. Ensure that there are no trailing empty spaces on each line you print.

For example:

how re you
hllo worl
=end

def remove_chars(str,chars)
    chars.split("").each do |char|
        str.gsub!(char,"")
    end
    str
end

File.open("remove_characters.txt").each_line do |line|
    str, chars = line.chomp.split(",")
    chars.gsub!(" ","")
    puts remove_chars(str,chars)
end

