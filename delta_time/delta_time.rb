=begin
CHALLENGE DESCRIPTION:

You are given the pairs of time values. The values are in the HH:MM:SS format with leading zeros. Your task is to find out the time difference between the pairs.

INPUT SAMPLE:

The first argument is a file that contains lines with the time pairs.

For example:

14:01:57 12:47:11
13:09:42 22:16:15
08:08:06 08:38:28
23:35:07 02:49:59
14:31:45 14:46:56
OUTPUT SAMPLE:

Print to stdout the time difference for each pair, one per line. You must format the time values in HH:MM:SS with leading zeros.

For example:

01:14:46
09:06:33
00:30:22
20:45:08
00:15:11
=end

file = File.open("delta_time.txt")

def delta_to_seconds(time)
    hours, minutes, seconds = time.split(":").map {|x| x.to_i }
    seconds += (minutes * 60) + (hours * 60 * 60)
    seconds
end

def seconds_to_delta(seconds)
    hours = 0
    minutes = 0
    until seconds < (60 * 60)
        hours += 1
        seconds -= (60 * 60)
    end
    until seconds < 60
        minutes += 1
        seconds -= 60
    end
    "#{hours.to_s.rjust(2,"0")}:#{minutes.to_s.rjust(2,"0")}:#{seconds.to_s.rjust(2,"0")}"
end

file.each_line do |line|
    time1, time2 = line.chomp.split(" ")
    difference_in_seconds = (delta_to_seconds(time2) - delta_to_seconds(time1)).abs
    puts seconds_to_delta(difference_in_seconds)
end
