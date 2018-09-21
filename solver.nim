import os

proc solve(puzzle: string):string =

  return puzzle

if paramCount() == 1:
  let puzzle:string = paramStr(1)
  echo "solution: " & solve(puzzle)
else:
  echo "No puzzle found to solve"
