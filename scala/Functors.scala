import scala.language.postfixOps

val list = List(1,2,3,4,5)
println(list.map(3+))

val answer = Some(42)
println(answer.map(3*))
