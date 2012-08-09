import System

class Adder:
	_addend as int

	[Property(Useless1)]
	_useless_field1 as int

	[Getter(Useless2)]
	_useless_field2 as int

	_useless_field4 as int
	Useless4 as int:
		get:
			return _useless_field4
		set:
			_useless_field4 = value

	def constructor(addend):
		_addend = addend
	def addit(input as int):
		return _addend + input

a = Adder(4)
print a.addit(5)

