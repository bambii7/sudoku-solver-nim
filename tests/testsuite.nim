import unittest, sudokusolver, lib/math

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