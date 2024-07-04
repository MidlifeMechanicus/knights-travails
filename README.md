# Project: Knights Travails
A project for the Odin Project Ruby Course

### Assignment

Your task is to build a function knight_moves that shows the shortest possible way to get from one square to another by outputting all squares the knight will stop on along the way.

You can think of the board as having 2-dimensional coordinates. Your function would therefore look like:

- knight_moves([0,0],[1,2]) == [[0,0],[1,2]]

Sometimes there is more than one fastest path. Examples of this are shown below. Any answer is correct as long as it follows the rules and gives the shortest possible path.

- knight_moves([0,0],[3,3]) == [[0,0],[2,1],[3,3]] or 
knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
- knight_moves([3,3],[0,0]) == [[3,3],[2,1],[0,0]] or 
knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]
- knight_moves([0,0],[7,7]) == [[0,0],[2,1],[4,2],[6,3],[4,4],[6,5],[7,7]] or 
knight_moves([0,0],[7,7]) == [[0,0],[2,1],[4,2],[6,3],[7,5],[5,6],[7,7]]


1. Think about the rules of the board and knight, make sure to follow them.
2. For every square there is a number of possible moves, choose a data structure that will allow you to work with them . Don’t allow any moves to go off the board.
3. Decide which search algorithm is best to use for this case. Hint: one of them could be a potentially infinite series.
4. Use the chosen search algorithm to find the shortest path between the starting square (or node) and the ending square. Output what that full path looks like, e.g.:

```
  > knight_moves([3,3],[4,3])
  => You made it in 3 moves!  Here's your path:
    [3,3]
    [4,5]
    [2,4]
    [4,3]
```