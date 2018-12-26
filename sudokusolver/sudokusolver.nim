import os
import lib/math, lib/seqprocs, lib/strprocs
import sequtils
import intsets

const sudoku_range: int = 81
const sudoku_numbers: array[9, int] = [1,2,3,4,5,6,7,8,9]

proc solve*(puzzle: seq[int]): seq[int] =
  let search_index:int = puzzle.find(0)
  if search_index == -1:
    return puzzle

  var exclude: IntSet = initIntSet()
  for square in 0..sudoku_range - 1:
    if excludeable(search_index, square):
      exclude.incl(puzzle[square])

  for num in sudoku_numbers:
    if num notin exclude:
      let new_puzzle = replaceAt(puzzle, search_index, num)
      let solution = solve(new_puzzle)
      if solution.find(0) == -1:
        return solution

  return puzzle

when isMainModule:
  if paramCount() == 1:
    let puzzle:string = paramStr(1)
    let puzzles:seq[int] = map(puzzle, charToInt)

    echo "solving: " & toString(puzzles)
    let solution = solve(puzzles)
    echo "solution: " & toString(solution)