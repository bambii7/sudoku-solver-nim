# Package
packageName   = "sudokusolver"
version       = "0.1.0"
author        = "Alexis"
description   = "Solvers for Sudoku"
license       = "MIT"

# skipExt = @["nim"]
# srcDir        = "src"
# bin           = @["sudokusolver"]


# Dependencies

# requires "nim >= 0.18.0"

# Tasks

task test, "run standard tests":
  exec "nim c -r tests/testsuite"

task build, "build":
  exec "nimble c src/sudokusolver"
