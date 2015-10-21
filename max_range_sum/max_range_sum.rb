=begin
CHALLENGE DESCRIPTION:

Bob is developing a new strategy to get rich in the stock market. He wishes to invest his portfolio for 1 or more days, then sell it at the right time to maximize his earnings. Bob has painstakingly tracked how much his portfolio would have gained or lost for each of the last N days. Now he has hired you to figure out what would have been the largest total gain his portfolio could have achieved.

For example:

Bob kept track of the last 10 days in the stock market. On each day, the gains/losses are as follows:

7 -3 -10 4 2 8 -2 4 -5 -2
If Bob entered the stock market on day 4 and exited on day 8 (5 days in total), his gains would have been

16 (4 + 2 + 8 + -2 + 4)
INPUT SAMPLE:

The input contains N, the number of days (0 < N < 10000), followed by N (separated by symbol ";") integers D (-10000 < D < 10000) indicating the gain or loss on that day.

For example:

5;7 -3 -10 4 2 8 -2 4 -5 -2
6;-4 3 -10 5 3 -7 -3 7 -6 3
3;-7 0 -45 34 -24 7
OUTPUT SAMPLE:

Print out the maximum possible gain over the period. If no gain is possible, print 0.

For example:

16
0
17
CONSTRAINTS:

Gain or loss on that day is (-100 < D < 100).
Number of days (0 < N < 100).
Number of test cases is 20.
=end

file = File.open "max_range_sum.txt"

def max_range_sum(days,gains_losses)
    max_sum = 0
    (0..gains_losses.size - days).each do |buy_idx|
        total = 0
        days.times do 
            total += gains_losses[buy_idx] 
            buy_idx += 1
        end
        max_sum = total if total > max_sum
    end
max_sum
    
end

file.each_line do |line|
    count_of_days, gains_and_losses = line.chomp.split(";")
    gains_and_losses = gains_and_losses.split(" ").map {|x| x.to_i}
    puts max_range_sum(count_of_days.to_i, gains_and_losses)
end