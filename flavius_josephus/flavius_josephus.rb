=begin
FLAVIUS JOSEPHUS
CHALLENGE DESCRIPTION:


Flavius Josephus was a famous Jewish historian of the first century, at the time of the destruction of the Second Temple. According to legend, during the Jewish-Roman war he was trapped in a cave with a group of soldiers surrounded by Romans. Preferring death to capture, the Jews decided to form a circle and, proceeding around it, to kill every j'th person remaining until no one was left. Josephus found the safe spot in the circle and thus stayed alive. 
Write a program that returns a list of n people, numbered from 0 to n-1, in the order in which they are executed.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers n and m, where n is the number of people and every m'th person will be executed. E.g.

10,3
5,2
OUTPUT SAMPLE:

Print out the list of n people (space delimited) in the order in which they will be executed. E.g.

2 5 8 1 6 0 7 4 9 3
1 3 0 4 2
=end

def order_of_execution(num_of_people,order)
    arr = []
    executions = []
    num_of_people.times {|x| arr << x }
    return arr.join(" ") if order == 0
    total = -1
    until arr.empty?
        total = (total + order) % arr.size
        executions << arr[total]
        arr.delete_at(total)
        total -= 1
    end
    executions.join(" ")
end

file = File.open "flavius_josephus.txt"
file.each_line do |line|
    num,order = line.chomp.split(",").map {|x| x.to_i }
    puts order_of_execution(num,order)
end
