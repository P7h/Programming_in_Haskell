/**
 * Sum of numbers
 * Program on page#9 -- PIH, Second Edition
 * Prashanth Babu V V :: 01st Oct, 2016.
 */

object Sum1 {
  def main(args: Array[String]) {
    callMethod(List(1,2,3,4,5,6))
  }

  def callMethod(array: List[Int]): Int = {
    array match {
        case Nil => 0
        case head :: tail => head + callMethod(tail)
    }
  }
}