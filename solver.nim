import os

proc solve(puzzle: string):string =
  let i:int = puzzle.find('0')
  return puzzle[i..i]

if paramCount() == 1:
  let puzzle:string = paramStr(1)
  echo "solution: " & solve(puzzle)
else:
  echo "No puzzle found to solve"
