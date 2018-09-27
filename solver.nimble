
packageName   = "sudokusolver"
version       = "0.0.0"
author        = "Alexis Hope"
description   = "Solvers for Sudoku"

srcDir = "src"
bin    = @["sudokusolver"]

task test, "run standard tests":
  withDir "tests":
    exec "nim c -r solver"