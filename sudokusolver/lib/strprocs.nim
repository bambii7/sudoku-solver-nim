import strutils

proc charToInt*(c:char):int =
  var str = newStringOfCap(1)
  str.add(c)
  return parseInt(str)