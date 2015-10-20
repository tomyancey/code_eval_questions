=begin
Challenge Description:

In this challenge you're presented with a situation in which you need to output big symbols on devices which only support ASCII characters and single, fixed-width fonts. To do this you're going to use pseudo-graphics to ‘draw’ these big symbols.

Here is an example of the font with digits from 0 to 9:

Each pixel is marked either with asterisk ‘*’ or with minus ‘-’. Size of a digit is 5×6 pixels.

Your task is to write a program, which outputs the numbers given to you with the font as in the example.
Input sample:

The first argument is a file that contains the lines with digits sequences you need to magnify. E.g.:
Output sample:

Print to stdout the magnified digits:
Constraints:

    Input lines are up to 16 symbols long.
    Input can contain some other symbols, which should be ignored (i.e. points, hyphens, spaces); only numbers must be printed out.

=end

numbers_hash = {	
0 =>["-**--","*--*-","*--*-","*--*-","-**--","-----"],
1 =>["--*--","-**--","--*--","--*--","-***-","-----"],
2 =>["***--","---*-","-**--","*----","****-","-----"],
3 =>["***--","---*-","-**--","---*-","***--","-----"],
4 =>["-*---","*--*-","****-","---*-","---*-","-----"],
5 =>["****-","*----","***--","---*-","***--","-----"],
6 =>["-**--","*----","***--","*--*-","-**--","-----"],
7 =>["****-","---*-","--*--","-*---","-*---","-----"],
8 =>["-**--","*--*-","-**--","*--*-","-**--","-----"],
9 =>["-**--","*--*-","-***-","---*-","-**--","-----"]
	}

file = File.open("big_digits.txt")
file.each_line do |line|
	arr = []
	6.times do ; arr << [] ; end
	digits = line.scan(/\d/).map {|x| x.to_i }
	digits.each do |digit| 
		big_digit = numbers_hash[digit]
		(0..big_digit.size - 1).each {|idx| arr[idx] << big_digit[idx] }
	end
	
	arr.each {|line| puts line.join }

end

