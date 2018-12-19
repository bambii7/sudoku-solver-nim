
proc sameColum*(currentSearch: int8, gameTile: int8): bool =
  currentSearch - gameTile mod 9 == 0

proc sameRow*(currentSearch: int8, gameTile: int8): bool =
  currentSearch div 9 == gameTile div 9

proc sameBlock*(currentSearch: int8, gameTile: int8): bool =
  currentSearch div 27 == gameTile div 27 and currentSearch mod 9 div 3 == gameTile mod 9 div 3

proc excludeable*(currentSearch: int8, gameTile: int8): bool =
  sameColum(currentSearch, gameTile)