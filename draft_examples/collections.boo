import System
import System.Collections.Generic

fav_num = Dictionary[of string,int]()
fav_num["scott"] = 7
fav_num["matt"] = 5

print fav_num["scott"]
print fav_num["matt"]

print "--------------"

num_array = ("zero","one","two","three","four")
sub_array = num_array[1:3]
for elem in sub_array:
	print elem

print "---------------"

first_few = (
	x for x in num_array 
	if x.CompareTo("p") < 0
)
for elem in first_few:
	print elem 

