import unittest
import lib/charprocs

suite "charprocs":
  test "charToInt converts a char to int":
    let i = charToInt('1')
    check(i == 1)

  test "charToInt throws an exception with invalid int":
    expect(Exception):
      discard charToInt('a')
