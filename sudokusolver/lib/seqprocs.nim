import sequtils

proc replaceAt*(s: seq[int], index: int, num: int): seq[int] =
  let head = s[0..index - 1]
  let replacement = @[num]
  let tail = s[index + 1..s.high]
  concat(head, replacement, tail)

proc toString*(s: seq[int]): string =
  result = newStringOfCap(len(s))
  for i in s:
    add(result, i)