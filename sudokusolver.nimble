# Package
packageName   = "sudokusolver"
version       = "0.1.0"
author        = "Alexis Hope"
description   = "Solvers for Sudoku"
license       = "MIT"

# skipExt = @["nim"]
# srcDir        = "src"
# bin           = @["sudokusolver"]


# Dependencies

# requires "nim >= 0.18.0"

# Tasks

proc test(name: string, lang: string = "c") =
  if not dirExists "build":
    mkDir "build"
  if not dirExists "nimcache":
    mkDir "nimcache"
  switch("out", ("./build/" & name))
  setCommand lang, "tests/" & name & ".nim"

task test, "run standard tests":
  test "testsuite"

task build, "build":
  exec "nimble c src/sudokusolver"
