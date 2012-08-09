import System
import System.IO


class CsvRecord(IQuackFu):
	_values = {}

	def SetValue(name as string, value as string):
		_values[name] = value

	def QuackGet(name as string, parameters as (object)):
		return _values[name]

	def QuackSet(name as string, parameters as (object), value):
		_values[name] = value
		return value
	def QuackInvoke(name as string, parameters as (object)) as object:
		pass

class CsvReader:
	_names as (string)
	_file as StreamReader

	def constructor():
		pass

	def read(file_name as string):
		_file = StreamReader(file_name)
		header = _file.ReadLine()
		_names = header.Split(char(','))

	def next() as CsvRecord:
		line = _file.ReadLine()
		if (line == null):
			return null
		else:
			values = line.Split(char(','))
			if values.Length == 1 and values[0] == "":
				return null
			record = CsvRecord()
			for ii in range(0,values.Length):
				record.SetValue(_names[ii],values[ii])
			return record

reader = CsvReader()
reader.read("user_colors.csv")
while ( (record = reader.next()) != null):
	print "$(record.User)'s favorite color is $(record.Color)"
	
