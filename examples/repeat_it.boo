namespace AstModification

import System
import Boo.Lang.Compiler
import Boo.Lang.Compiler.Ast
	
class RepeatItMacro(AbstractAstMacro):
	def constructor():
		super()
	def constructor(context as CompilerContext):
		super(context)
	
	override def Expand(input as MacroStatement) as Statement:
		if input.Arguments.Count != 1:
			self.Context.Errors.Add(
				CompilerError(
					input.LexicalInfo,
					"RepeatIt macro takes exactly one argument."
				)
			)
		rep_expr = input.Arguments[0]
		if rep_expr.NodeType != NodeType.IntegerLiteralExpression:
			self.Context.Errors.Add(
				CompilerError(
					input.LexicalInfo,
					"RepeatIt macro takes one integer literal expression as an argument."
				)
			)
			return null
			
		typed_rep_expr as IntegerLiteralExpression = rep_expr
		reps as int = typed_rep_expr.Value
		
		result as Block = Block()
		for ii in range(0,reps):
			result.Statements.AddRange(input.Body.Statements)
		return result

print "Normal statement"
RepeatIt 3:
	print "Repeated statement"
