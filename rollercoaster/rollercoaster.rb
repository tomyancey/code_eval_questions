=begin
CHALLENGE DESCRIPTION:


You are given a piece of text. Your job is to write a program that sets the case of text characters according to the following rules:

The first letter of the line should be in uppercase.
The next letter should be in lowercase.
The next letter should be in uppercase, and so on.
Any characters, except for the letters, are ignored during determination of letter case.
INPUT SAMPLE:

The first argument will be a path to a filename containing sentences, one per line. You can assume that all characters are from the English language.

For example:

To be, or not to be: that is the question.
Whether 'tis nobler in the mind to suffer.
The slings and arrows of outrageous fortune.
Or to take arms against a sea of troubles.
And by opposing end them, to die: to sleep.
OUTPUT SAMPLE:

Print to stdout the RoLlErCoAsTeR case version of the string.

For example:

To Be, Or NoT tO bE: tHaT iS tHe QuEsTiOn.
WhEtHeR 'tIs NoBlEr In ThE mInD tO sUfFeR.
ThE sLiNgS aNd ArRoWs Of OuTrAgEoUs FoRtUnE.
Or To TaKe ArMs AgAiNsT a SeA oF tRoUbLeS.
AnD bY oPpOsInG eNd ThEm, To DiE: tO sLeEp.
CONSTRAINTS:

The length of each piece of text does not exceed 1000 characters.
=end

file = File.open "rollercoaster.txt"

def rollercoaster(str)
	arr = str.split("")
	upcase_switch = true
	arr.map! do |letter|
		if letter.match(/[a-zA-Z]/)
			if upcase_switch == true  
				upcase_switch = false
				letter.upcase
			else
				upcase_switch = true 
				letter.downcase
			end
		else
			letter
		end
	end
	arr.join("")
end

file.each_line do |line|
	puts rollercoaster(line.chomp)
end