
val list = List(1,2,3,4,5)
println(list.foldLeft(0)((total, next) => total + next))
println(list.foldRight(0)((next, total) => total + next))
