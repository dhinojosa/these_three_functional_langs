
trait Show[T] {
  def show(t:T):String
}

implicit object PersonShow extends Show[Person] {
  def show(p:Person) = s"Person {firstName = ${p.firstName}, lastName = ${p.lastName}, ssn = ${p.ssn}}"
}

class Person(val firstName:String, val lastName:String, val ssn:String)

def show[A](a:A)(implicit showable: Show[A]) = showable.show(a)

println(show(new Person("Bob", "Bordeau", "303-10-1002")))
