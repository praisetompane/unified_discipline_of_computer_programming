import scala.annotation.tailrec
def length(arr: List[Int]): Int = {
  @tailrec
  def _length(total: Int, objects: List[Int]): Int = objects match {
    case List()       => total
    case head :: tail => _length(total + 1, tail)
  }
  _length(0, arr)
}

@main def main(): Unit = {
  val numbers = (1 to 10).toList
  println("using custom code")
  println(length(numbers))

  println("using standard scala library")
  println(numbers.length)
}
