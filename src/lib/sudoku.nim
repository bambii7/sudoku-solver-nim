
proc sameColum*(currentSearch: int8, gameTile: int8): bool =
  currentSearch - gameTile mod 9 == 0

proc excludeable*(currentSearch: int8, gameTile: int8): bool =
  sameColum(currentSearch, gameTile)