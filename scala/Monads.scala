val a = List(1,2,3,4,5)
val b = List(6,7,8,9,10)

println(a.flatMap(x => b.map(y => x + y)))

val c = for (i <- List(100, 101, 102);
             j <- Some(50)) yield (i + j)

println(c)
