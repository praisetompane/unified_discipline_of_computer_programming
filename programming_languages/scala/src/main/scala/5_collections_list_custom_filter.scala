import scala.collection.mutable.ArrayBuffer

def filter(delim: Int, arr: Iterable[Int]): Iterable[Int] = {
  val results = ArrayBuffer[Int]()
  arr.foreach { num =>
    if (num < delim) {
      println(s"adding $num to list")
      results += num
    }
  }
  results.toList
}

@main def main() = {
  println("using custom code")
  val numbers = List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
  val delim = 7
  println(filter(delim, numbers))

  println("using standard scala library")
  println(numbers.filter(num => num < delim))
}
