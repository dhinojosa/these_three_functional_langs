
//Methods
def addThree1ArgMethod(x:Int) = x + 3  //last evaluated stmt is returned 

//val addThree1ArgFunction = new Function1[Int, Int] {
//   def apply(x:Int) = x + 3
//}

def addThree2ArgMethod(x:Int, y:Int) = x + y + 3

//Functions
val addThree1ArgFunction = (x:Int) => x + 3
val addThree2ArgFunction = (x:Int, y:Int) => x + y + 3

val addFunctionToNumberFunction = (n:Int, f:Int => Int) => f(n)

println(addThree1ArgMethod(40))
println(addThree1ArgFunction(50))

println(addFunctionToNumberFunction(10, addThree1ArgMethod))
println(addFunctionToNumberFunction(10, addThree1ArgMethod _))

println(addFunctionToNumberFunction(10, (x:Int) => x + 19))
println(addFunctionToNumberFunction(10, x => x + 19))
println(addFunctionToNumberFunction(10, _ + 19))
println(addFunctionToNumberFunction(10, 19 + _))

import scala.language.postfixOps
println(addFunctionToNumberFunction(10, 19+))

println(addFunctionToNumberFunction(10, addThree2ArgMethod(5, _:Int)))

val curriedFunction = addThree2ArgFunction.curried

//Currying
println(addFunctionToNumberFunction(10, curriedFunction(5)))

println("Hello".reverse.take(3))

val g = (x:String) => x.reverse
val f = (x:String) => x.take(3)
val fg = f compose g

println(fg("Hello"))







