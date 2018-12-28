# Package
packageName   = "sudokusolver"
version       = "0.1.0"
author        = "Alexis Hope"
description   = "Solvers for Sudoku"
license       = "MIT"

skipDirs = @["tests"]
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


proc build(name: string, lang: string = "c") =
  if not dirExists "build":
    mkDir "build"
  if not dirExists "nimcache":
    mkDir "nimcache"
  switch("out", ("./build/" & name))
  setCommand lang, "sudokusolver/" & name & ".nim"

proc configForTests() =
  --hints: off
  --linedir: on
  --stacktrace: on
  --linetrace: on
  --debuginfo
  --path: "."
  --run

task test, "run standard tests":
  configForTests()
  test "all"

task build2, "build":
  build "sudokusolver"
  # switch("out", ("./build/sudokusolver"))
  # exec "nimble c sudokusolver/sudokusolver.nim"

task solve, "solve a test puzzle":
  exec "./build/sudokusolver 010020300004005060070000008006900070000100002030048000500006040000800106008000000"

task bs, "build and solve":
  exec "nimble build2"
  exec "nimble solve"
