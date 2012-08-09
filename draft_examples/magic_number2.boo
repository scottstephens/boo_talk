import System


class MagicNumber:
	def isMagicNumber(gen as Random):
		tmp = gen.Next()
		if (tmp == 3):
			print "Hit magic number!"
		else:
			print "$tmp is not the magic number!"


