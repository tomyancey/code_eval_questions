=begin
Challenge Description:

You're responsible for providing a demographic report for your local school district based on age. To do this, you're going determine which 'category' each person fits into based on their age.

The person's age will determine which category they should be in:

If they're from 0 to 2 the child should be with parents print : 'Still in Mama's arms'
If they're 3 or 4 and should be in preschool print : 'Preschool Maniac'
If they're from 5 to 11 and should be in elementary school print : 'Elementary school'
From 12 to 14: 'Middle school'
From 15 to 18: 'High school'
From 19 to 22: 'College'
From 23 to 65: 'Working for the man'
From 66 to 100: 'The Golden Years'
If the age of the person less than 0 or more than 100 - it might be an alien - print: "This program is for humans"
Input sample:

Your program should accept as its first argument a path to a filename. Each line of input contains one integer - age of the person:

Output sample:

For each line of input print out where the person is:
		
=end

file = File.open("age_distribution.txt")

def age_group(num)
	return "Still in Mama's arms" if (0..2).include?(num)
	return "Preschool Maniac" if (3..4).include?(num)
	return "Elementary school" if (5..11).include?(num)
	return "Middle School" if (12..14).include?(num)
	return "High School" if (15..18).include?(num)
	return "College" if (19..22).include?(num)
	return "Working for the man" if (23..65).include?(num)
	return "The Golden Years" if (66..100).include?(num)
	"This program is for humans"
end

file.each_line {|line| puts age_group(line.to_i)}
