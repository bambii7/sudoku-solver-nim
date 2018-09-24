srcDir = "src"
bin    = @["solver"]

task test, "Run the choosenim tester!":
  withDir "tests":
    exec "nim c -r solver"