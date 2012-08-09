

def needs_retrieve(r as duck):
	r.Retrieve("yahoo.com")

class R1:
	def Retrieve(input as string):
		print "R1 " + input

class R2:
	def Retrieve(arg as string):
		print "R2 " + arg

needs_retrieve(R1())
needs_retrieve(R2())

