
proc sameColum*(currentSearch: int, gameTile: int): bool =
  currentSearch - gameTile mod 9 == 0

proc sameRow*(currentSearch: int, gameTile: int): bool =
  currentSearch div 9 == gameTile div 9

proc sameBlock*(currentSearch: int, gameTile: int): bool =
  currentSearch div 27 == gameTile div 27 and currentSearch mod 9 div 3 == gameTile mod 9 div 3

proc excludeable*(currentSearch: int, gameTile: int): bool =
  sameColum(currentSearch, gameTile) or sameRow(currentSearch, gameTile) or sameBlock(currentSearch, gameTile)