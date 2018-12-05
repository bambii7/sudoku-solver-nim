
proc sameColum*(currentSearch: int8, gameTile: int8): bool =
  currentSearch - gameTile mod 9 == 0

proc sameRow*(currentSearch: int8, gameTile: int8): bool =
  currentSearch div 9 == gameTile div 9

proc excludeable*(currentSearch: int8, gameTile: int8): bool =
  sameColum(currentSearch, gameTile)