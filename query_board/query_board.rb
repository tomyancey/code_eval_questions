=begin
CHALLENGE DESCRIPTION:


There is a board (matrix). Every cell of the board contains one integer, which is 0 initially. 

The next operations can be applied to the Query Board: 
SetRow i x: it means that all values in the cells on row "i" have been changed to value "x" after this operation. 
SetCol j x: it means that all values in the cells on column "j" have been changed to value "x" after this operation. 
QueryRow i: it means that you should output the sum of values on row "i". 
QueryCol j: it means that you should output the sum of values on column "j". 

The board's dimensions are 256x256 
"i" and "j" are integers from 0 to 255 
"x" is an integer from 0 to 31 
INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file contains an operation of a query. E.g.

SetCol 32 20
SetRow 15 7
SetRow 16 31
QueryCol 32
SetCol 2 14
QueryRow 10
SetCol 14 0
QueryRow 15
SetRow 10 1
QueryCol 2
OUTPUT SAMPLE:

For each query, output the answer of the query. E.g.

5118
34
1792
3571
=end

class Board
    attr_accessor :board
    def initialize 
        @board = []
        256.times {@board << Array.new} 
        @board.each {|row| 256.times { row << 0 } }
        @board.each {|row| row }
    end
    
    def SetCol(col,val)
        @board.each {|row| row[col] = val }
    end
    
    def SetRow(row,val)
        @board[row].map! {|old_val|  old_val = val }
    end
    
    def QueryRow(row)
        @board[row].reduce(:+)
    end
    
    def QueryCol(col)
        total = 0
        @board.each {|row| total += row[col] }
        total
    end
end

board = Board.new
File.open("query_board.txt").each_line do |line|
    function, data1, data2 = line.chomp.split(" ")
    case function
    when "SetCol"
        board.SetCol(data1.to_i, data2.to_i)
    when "SetRow"
        board.SetRow(data1.to_i, data2.to_i)
    when "QueryCol"
        puts board.QueryCol(data1.to_i)
    when "QueryRow"
        puts board.QueryRow(data1.to_i)
    end
end