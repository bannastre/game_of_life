# Conway's Game of Life #

## A first attempt at building Life ##

https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life

The "game" is a zero-player game, meaning that its evolution is determined by its initial state, requiring no further input.

## Rules ##

The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, alive or dead, or "populated" or "unpopulated". Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:

- Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
- Any live cell with two or three live neighbours lives on to the next generation.
- Any live cell with more than three live neighbours dies, as if by overpopulation.
- Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

## Installation ##

Run ```bundle``` or first run ```gem install bundle``` if not already installed.
Then run command ```ruby board.rb``` 
