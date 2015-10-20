=begin
Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers. E.g.
    input example
    20,6
    2,3
You may assume M will never be zero.
=end

def n_mod_m(n,m)
    until n - m < 0
        n -= m 
    end
    n
end

file = File.open ARGV[0]
file.each_line do |line|
    n, m = line.chomp.split(",").map {|x| x.to_i }
    puts n_mod_m(n, m)
end