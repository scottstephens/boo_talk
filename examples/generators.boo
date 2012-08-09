import System
import System.Collections.Generic

num_array = ("zero","one","two","three","four")

first_few = (
	x for x in num_array 
	if x.CompareTo("p") < 0
)
for elem in first_few:
	print elem 

