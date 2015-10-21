=begin
CHALLENGE DESCRIPTION:


Your task is to write a program which determines (calculates) the percentage ratio of lowercase and uppercase letters.

INPUT SAMPLE:

Your program should accept a file as its first argument. Each line of input contains a string with uppercase and lowercase letters.

For example:

thisTHIS
AAbbCCDDEE
N
UkJ
OUTPUT SAMPLE:

For each line of input, print the percentage ratio of uppercase and lowercase letters rounded to the second digit after the point.

For example:

lowercase: 50.00 uppercase: 50.00
lowercase: 20.00 uppercase: 80.00
lowercase: 0.00 uppercase: 100.00
lowercase: 33.33 uppercase: 66.67
=end

file = File.open("lettercase_percentage_ratio.txt")

def format_ratio(percent)
        return "100.00" if percent == 1.0

        _, percent_str = percent.to_s.split(".")
        
        percent_str = percent_str.ljust(4,"0") if percent_str.length < 4
        percent = percent_str.split("").insert(2,".").join("")
        sprintf("%.2f",percent)
end

def percentage_ratio(str)
    lowcase = ('a'..'z').to_a
    lowcase_total = 0
    
    str.split("").each {|letter| lowcase_total += 1 if lowcase.include?(letter) }
    low_percentage = lowcase_total / str.length.to_f
    up_percentage = 1 - low_percentage
    "lowercase: #{format_ratio(low_percentage)} uppercase: #{format_ratio(up_percentage)}"

end

file.each_line do {|line|  puts percentage_ratio(line.chomp) }