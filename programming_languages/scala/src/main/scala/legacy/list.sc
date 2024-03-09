import java.util.NoSuchElementException

trait List[T] {
  def isEmpty: Boolean
  def head: Int
  def tail: List[T]
}

class Cons[T](val head: T, val tail: List[T]) extends List[T] {
  def isEmpty = false
}

class Nil[T] {
  def isEmpty = true
  def head = throw new NoSuchElementException("Nil.head")
  def tail = throw new NoSuchElementException("Nil.tail")
}

object nth {

  def nth[T](n: Int, xs: List[T]): Int =
    if (xs.isEmpty) throw new NoSuchElementException("Nil.head")
    else if (n == 0) xs.head
    else nth(n - 1, xs.tail)

}
