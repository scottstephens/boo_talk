

class Adder(object):
	def __init__(self,addend):
		self.addend = addend
	def addit(self,input):
		return self.addend + input;

a = Adder(4)
print a.addit(5)

