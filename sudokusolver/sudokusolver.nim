import os
import lib/seqprocs, lib/charprocs
import solver/backtrace
import sequtils

when isMainModule:
  if paramCount() == 1:
    let puzzle:string = paramStr(1)
    let puzzles:seq[int] = puzzle.map(charToInt)

    echo "solving: " & toString(puzzles)
    let solution = backtrace(puzzles)
    echo "solution: " & toString(solution)
