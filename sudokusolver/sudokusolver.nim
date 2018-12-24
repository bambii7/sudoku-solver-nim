import os
import lib/math
import strutils
import sequtils
import intsets

const sudoku_range: int = 81
const sudoku_numbers: array[9, int] = [1,2,3,4,5,6,7,8,9]

# proc strReplaceChar(str: string, index: int, character: char): string =
#   str[0..index - 1] & character & str[index + 1..str.high]

proc replaceAt(s: seq[int], index: int, num: int): seq[int] =
  let head = s[0..index - 1]
  let replacement = @[num]
  let tail = s[index + 1..s.high]
  concat(head, replacement, tail)

proc toString(s: seq[int]): string =
  result = newStringOfCap(len(s))
  for i in s:
    add(result, i)

proc solve*(puzzle: seq[int]): seq[int] =
  # if puzzle.len != sudoku_range:
  #   # throw exception if invalid input
  #   return nil

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
    var puzzles:seq[int] = @[]
    for c in puzzle:
      var str = newStringOfCap(1)
      str.add(c)
      puzzles.add(parseInt(str))

    echo "solving: " & toString(puzzles)
    let solution = solve(puzzles)
    echo "solution: " & toString(solution)
