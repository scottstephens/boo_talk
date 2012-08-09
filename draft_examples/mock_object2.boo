import System

class NotRandom(IQuackFu):
	counter as int

	def constructor():
		counter = 0

	def MyNext() as int:
		out as int
		if (counter == 0):
			out = 1
		else:
			out = 3
		out += 1
		return out

	def QuackGet(name as string, parameters as (object)):
		pass
	def QuackSet(name as string, parameters as (object), value as object):
		pass
	def QuackInvoke(name as string, parameters as (object)):
		if (name == "Next"):
			return MyNext()


r = NotRandom() as duck
m = MagicNumber()
m.isMagicNumber(r)
m.isMagicNumber(r)


