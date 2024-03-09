import io.Source.stdin
/*
  def file = collection of data at arbitary location.
            {local_blob, remote_blob, local_database, remote_database, ...}
*/
object Solution {
  def main(args: Array[String]): Unit = {
    println("Please enter two numbers on separate lines")
    val sum = stdin.getLines().take(2).map(_.toInt).sum
    println(sum)
  }
}
