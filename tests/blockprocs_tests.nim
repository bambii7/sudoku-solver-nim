import unittest
import lib/blockprocs

suite "description for this stuff":
  test "sameColum returns true given 2, 11":
    let samesies = sameColum(2, 11)
    check(samesies == true)

  test "sameColum returns false given 1, 74":
    let samesies = sameColum(1, 74)
    check(samesies == false)

  test "sameRow returns true given 2, 3":
    let samesies = sameRow(2, 3)
    check(samesies == true)

  test "sameRow returns false given 2, 12":
    let samesies = sameRow(2, 12)
    check(samesies == false)

  test "sameBlock returns true given 1, 12":
    let empty = sameBlock(1, 12)
    check(empty == false)

  test "sameBlock returns true given 1, 18":
    let empty = sameBlock(1, 18)
    check(empty == true)