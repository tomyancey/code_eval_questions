=begin
SUGGEST GROUPS
CHALLENGE DESCRIPTION:

You may have noticed that a new feature was added to our web site – user groups. So, this challenge is about joining groups.

You are given a list of users of a social network, friends of each user, and groups the user participates in.

To help users find the most interesting groups, we suggest them joining the groups where ≥50% of their friends participate.

Your task is to write a program which finds a list of suggested groups for each user.

INPUT SAMPLE:

The first argument is a file that contains the information about each user, one user per line. The line is delimited by colon ‘:’ into three parts: user name, list of friends, and list of groups. The items in each part are delimited by comma ‘,’.

For example:

Amira:Isaura,Lizzie,Madalyn,Margarito,Shakira,Un:Driving,Mineral 
collecting
Elliot:Isaura,Madalyn,Margarito,Shakira:Juggling,Mineral 
collecting
Isaura:Amira,Elliot,Lizzie,Margarito,Verla,Wilford:Juggling
Lizzie:Amira,Isaura,Verla:Driving,Mineral collecting,Rugby
Madalyn:Amira,Elliot,Margarito,Verla:Driving,Mineral collecting
,Rugby
Margarito:Amira,Elliot,Isaura,Madalyn,Un,Verla:Mineral collecting
Shakira:Amira,Elliot,Verla,Wilford:Mineral collecting
Un:Amira,Margarito,Wilford:
Verla:Isaura,Lizzie,Madalyn,Margarito,Shakira:Driving,Juggling
,Mineral collecting
Wilford:Isaura,Shakira,Un:Driving
OUTPUT SAMPLE:

Print to stdout the list of suggested groups for each user. The list of users and the list of groups for each user must be sorted alphabetically.

For example:

Isaura:Driving,Mineral collecting
Lizzie:Juggling
Madalyn:Juggling
Margarito:Driving,Juggling
Shakira:Driving,Juggling
Un:Driving,Mineral collecting
CONSTRAINTS:

Number of users in input data is 200.
Number of different groups in input data is 15.
There can be users that do not participate in any group.
Friendship is mutual (if user A is a friend with user B, then user B is a friend with user A).
=end
arr = []
File.open("suggest_groups.txt").each_line {|line| arr << line.chomp.split(":") }

idx = 0
until idx == arr.size
	arr[idx][1] = arr[idx][1].split(",") unless arr[idx][1].nil?
	arr[idx][2] = arr[idx][2].split(",") unless arr[idx][2].nil?
	idx += 1
end

person_hobbies, person_friends, person_suggestions = {}, {}, {}

arr.each do |person_arr|
	person, friends, hobbies = person_arr[0], person_arr[1], person_arr[2]
	person_friends[person] = friends if friends
	person_hobbies[person] = hobbies if hobbies
end

suggested_groups = []
person_friends.each do |person, friends|
	list_groups = []
	friends.each do |friend|
		if !person_hobbies[friend].nil?
			person_hobbies[friend].each do |hobby|
				if person_hobbies[person].nil?
					list_groups << hobby
				elsif person_hobbies[person].include?(hobby) == false
					list_groups << hobby
				end
			end
		end
	end
	
	over_half = []
	list_groups.flatten.compact.uniq.each do |hobby| 
		over_half << hobby if list_groups.count(hobby) >= (person_friends[person].size / 2.0) 
	end		
	suggested_groups << "#{person}:#{over_half.uniq.sort.join(",")}" if !over_half.empty?
end

suggested_groups.sort.each {|x| puts x }