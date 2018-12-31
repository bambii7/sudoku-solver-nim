#!/usr/bin/env bash
while read p; do
  ./build/sudokusolver $p
done <puzzles.txt