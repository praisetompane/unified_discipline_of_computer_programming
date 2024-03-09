def f(repetitions: Int, numbers: Iterable[Int]): Iterable[Int] = {
  numbers.flatMap { number =>
    List.fill(repetitions)(number)
  }
}

@main def main() = {
  val repetitions = 5
  val numbers = List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
  println(f(repetitions, numbers))
}
