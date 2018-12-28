import os
import lib/seqprocs, lib/charprocs
import sequtils

include lib/backtrace

when isMainModule:
  if paramCount() == 1:
    let puzzle:string = paramStr(1)
    let puzzles:seq[int] = puzzle.map(charToInt)

    echo "solving: " & puzzles.toString()
    let solution = backtrace(puzzles)
    echo "solution: " & solution.toString()
