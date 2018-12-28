import unittest, sequtils
import lib/charprocs
import sudokusolver

suite "backtrace":
  test "backtrace returns nil if invalid input":
    let result = backtrace(@[1, 2, 3])
    check(result == nil)

  test "backtrace returns a valid solution":
    let puzzle = "010020300004005060070000008006900070000100002030048000500006040000800106008000000".map(charToInt)
    let result = backtrace(puzzle)
    let expected = "815624397394785162276139458126935478458167392739248156512376849347829156698145237".map(charToInt)
    check(result == expected)