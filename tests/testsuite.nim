import unittest
import lib/math, lib/charprocs
import solver/backtrace
import sequtils

suite "description for this stuff":
  echo "suite setup: run once before the tests"
  
  setup:
    echo "run before each test"
  
  teardown:
    echo "run after each test"
  
  test "sameColum returns true given 2, 11":
    let samesies = sameColum(2, 11)
    check(samesies == true)

  test "sameColum returns false given 1, 81":
    let samesies = sameColum(1, 81)
    check(samesies == false)

  test "sameRow returns true given 2, 3":
    let samesies = sameRow(2, 3)
    check(samesies == true)

  test "sameRow returns false given 2, 12":
    let samesies = sameRow(2, 12)
    check(samesies == false)

  test "sameBlock returns true given 1, 12":
    let empty = sameRow(1, 12)
    check(empty == false)

  test "sameBlock returns true given 1, 18":
    let empty = sameRow(1, 12)
    check(empty == true)

  test "solve returns nil if invalid input":
    let result = backtrace(@[1, 2, 3])
    check(result == nil)

  test "solve returns nil if invalid input":
    let puzzle = "010020300004005060070000008006900070000100002030048000500006040000800106008000000".map(charToInt)
    let result = backtrace(puzzle)
    let expected = "815624397394785162276139458126935478458167392739248156512376849347829156698145237".map(charToInt)
    check(result == expected)