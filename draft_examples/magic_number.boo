import System


class MagicNumber:
	_gen as Random
	def constructor(gen as Random):
		_gen = gen
	def isMagicNumber():
		tmp = _gen.Next()
		if (tmp == 3):
			print "Hit magic number!"
		else:
			print "$tmp is not the magic number!"


