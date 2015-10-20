=begin
CHALLENGE DESCRIPTION:


Print out the grade school multiplication table upto 12*12.

INPUT SAMPLE:

There is no input for this program.

OUTPUT SAMPLE:

Print out the table in a matrix like fashion, each number formatted to a width of 4 (The numbers are right-aligned and strip out leading/trailing spaces on each line). The first 3 line will look like:

1   2   3   4   5   6   7   8   9  10  11  12
2   4   6   8  10  12  14  16  18  20  22  24
3   6   9  12  15  18  21  24  27  30  33  36
=end

current_multiple = 1
until current_multiple >= 13 
    str = ""
    current_val = 0
    12.times do
        if current_val == 0 
            str << current_multiple.to_s.rjust(4)
            current_val = current_multiple
        else
            current_val += current_multiple
            str << current_val.to_s.rjust(4)
        end
    end
    puts str
    current_multiple += 1
end
