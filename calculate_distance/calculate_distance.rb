=begin
Challenge Description:

You have coordinates of 2 points and need to find the distance between them.
Input sample:

Your program should accept as its first argument a path to a filename. Input example is the following

All numbers in input are integers between -100 and 100.
Output sample:

Print results in the following way.

You don't need to round the results you receive. They must be integer numbers. 
=end	

file = File.open("calculate_distance.txt")

def calculate_distance(val1,val2)
	x_diff = (val1[0] - val2[0]).abs
	y_diff = (val1[1] - val2[1]).abs
	c_squared = x_diff ** 2 + y_diff ** 2
	Math.sqrt(c_squared).to_i
end

file.each_line do |line|
	val1, val2 = line.chomp.scan(/(-?\d+), (-?\d+)/).to_a {|x| x.to_i }
	val1.map! {|x| x.to_i}
	val2.map! {|x| x.to_i}
	puts calculate_distance(val1,val2)
end