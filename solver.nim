import os

proc strReplaceChar(str: string, index: int, character: char): string =
  str[0..index - 1] & character & str[index + 1..str.high]

proc solve(puzzle: string):string =
  let i:int = puzzle.find('0')
  
  let newPuzzle = strReplaceChar(puzzle, i, 'a')
  return newPuzzle

if paramCount() == 1:
  let puzzle:string = paramStr(1)
  echo "solution: " & solve(puzzle)
else:
  echo "No puzzle found to solve"
