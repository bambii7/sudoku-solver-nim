import intsets
import ../lib/math, ../lib/seqprocs, ../lib/charprocs

const sudoku_range: int = 81
const sudoku_numbers: array[9, int] = [1,2,3,4,5,6,7,8,9]

proc backtrace*(puzzle: seq[int]): seq[int] =
  if puzzle.len != 81:
    return nil
  
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
      let solution = backtrace(new_puzzle)
      if solution.find(0) == -1:
        return solution

  return puzzle