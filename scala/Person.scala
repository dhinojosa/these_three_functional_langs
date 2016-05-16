import scala.beans.BeanProperty

case class Person(
  @BeanProperty val fn:String, 
  val ln:String, var age:Int)


val Person(fn, ln, ag) = new Person("Rob", "Lowe", 30)
println(ln)
