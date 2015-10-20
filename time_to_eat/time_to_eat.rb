=begin
e includes a test case: a schedule containing unsorted timestamps in HH:MM:SS format.

For example:

02:26:31 14:44:45 09:53:27
05:33:44 21:25:41

OUTPUT SAMPLE:

Sort timestamps in each schedule from the biggest to the smallest one.

14:44:45 09:53:27 02:26:31
21:25:41 05:33:44

CONSTRAINTS:

Each schedule may have from 2 to 20 timestamps.
Timestamp 23:59:59 - biggest and 00:00:01 the smallest one.
The number of test cases is 40.
=end
def time_to_eat(str)
	text = str.chomp.split(" ")
	hasher = {}
	#initialize hash: key is given value, value = value split on ":" and joined
	#back together as a integer
	text.each {|x| hasher[x] = x.split(":").join.to_i }
	order = hasher.values.sort
	hasher_invert = hasher.invert
    #grab the sort order from the inverted hash returning the original val
	final_ans = order.map {|x| hasher_invert[x]}
	final_ans.join(" ")
end

File.open("time_to_eat_data.txt").each_line do |line|
    puts time_to_eat(line.chomp)
end
