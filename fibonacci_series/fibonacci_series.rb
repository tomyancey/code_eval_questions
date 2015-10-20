=begin
FIBONACCI SERIES
CHALLENGE DESCRIPTION:


The Fibonacci series is defined as: F(0) = 0; F(1) = 1; F(n) = F(n–1) + F(n–2) when n>1. Given an integer n≥0, print out the F(n).

INPUT SAMPLE:

The first argument will be a path to a filename containing integer numbers, one per line. E.g.

5
12
OUTPUT SAMPLE:

Print to stdout, the fibonacci number, F(n). E.g.

5
144
=end
file = File.open("fibonacci_series_data.txt")

def fibonacci(num)
    return 0 if num == 0
    return 1 if num == 1
    fib = [0,1]
    until fib.length > num
        fib << fib[-1] + fib[-2]
    end
    fib[-1]
end

file.each_line {|line| puts fibonacci(line.to_i) }
    