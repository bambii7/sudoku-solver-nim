import unittest, sudokusolver, lib/math

suite "description for this stuff":
  echo "suite setup: run once before the tests"
  
  setup:
    echo "run before each test"
  
  teardown:
    echo "run after each test"
  
  test "sameColum returns true given 2, 11":
    # give up and stop if this fails
    let samesies = sameColum(2, 11)
    check(samesies == true)

  test "sameColum returns false given 1, 81":
    # give up and stop if this fails
    let samesies = sameColum(1, 81)
    check(samesies == false)
