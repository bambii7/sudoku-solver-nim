import unittest
import lib/seqprocs

suite "seqprocs":
  test "replaceAt converts a char to int":
    let s = @[1, 2, 3].replaceAt(0, 4)
    check(s == @[4, 2, 3])

  test "toString concats a seq[int] to a string":
    let s = @[1, 2, 3].toString()
    check(s == "123")
