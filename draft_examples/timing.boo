import System
import System.Diagnostics

import Boo.Lang.Compiler
import Boo.Lang.Compiler.Ast

macro TimeIt:
	yield [| t = Stopwatch.StartNew() |]
	yield TimeIt.Body
	yield [| t.Stop() |]
	yield [| print "Elapsed time is {0} ms" % (t.ElapsedMilliseconds,) |]

TimeIt:
	System.Threading.Thread.Sleep(1000)


