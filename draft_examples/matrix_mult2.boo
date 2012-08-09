import System

class Matrix:
	_data as (double)
	_dim as (int)
	def constructor(nrows as int, ncolumns as int):
		_dim = (nrows,ncolumns)
		_data = array(double,nrows*ncolumns)
	def constructor(nrows as int, ncolumns as int, data as (double)):
		_dim = (nrows,ncolumns)
		_data = data

	Rows as int:
		get:
			return _dim[0]
	Columns as int:
		get:
			return _dim[1]
	def set(ii as int, jj as int, value as double):
		if (ii > 0 and ii < _dim[0] and jj > 0 and jj < _dim[1]):
			_data[_dim[0]*jj + ii] = value
	def multiply(x as Matrix) as Matrix:
		if (self.Columns != x.Rows):
			raise Exception("Dimension mismatch: $(self.Rows)x$(self.Columns) * $(x.Rows)x$(x.Columns)")
		nrows = self.Rows
		ncols = x.Columns
		ra = self.Rows
		ca = self.Columns
		rb = x.Rows
		cb = x.Columns
		a = self._data
		b = x._data
		result = array(double,nrows*ncols)
		for ii in range(ra):
			for jj in range(cb):
				tmp = 0.0
				for kk in range(ra):
					tmp += a[ra*kk + ii]*b[rb*jj + kk]
				result[nrows*jj + ii] = tmp
		tr = Matrix(nrows,ncols,result)
		return tr

n = 100
m = 100

r = Random()

m1 = Matrix(n,m)
for ii in range(0,n):
	for jj in range(0,m):
		m1.set(ii,jj,r.NextDouble())

m2 = Matrix(n,m)
for ii in range(0,n):
	for jj in range(0,m):
		m2.set(ii,jj,r.NextDouble())

print "Starting calc loop."

t = System.Diagnostics.Stopwatch.StartNew()
for ii in range(0,10):
	m3 = m1.multiply(m2)
t.Stop()

runtime = (t.ElapsedMilliseconds cast decimal) / Decimal.Parse('1000.0')
print "Runtime: {0:####0.000} s" % (runtime,)





