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

### Project notes

This assignment was very tough for me. I started off making a graph model of the board, 64 nodes with (up to) 8 connections per node. This was fine. But as soon as I tried to find paths through the graph, the small linux partiton on my computer would crash. Looking back, I realise that my computer was entering infinite loops of circular travel as part of the search algorithm.

After that, I hit a wall pretty hard, and spent several hours looking at other examples and variations of this and the traveling salesman problem. Nothing really seemed to click, until I discovered qpongratz's work on this same problem (https://github.com/qpongratz/knights-travails).

His methodology was brilliant; simply treat the problem as a reverse linked list, with each node pointing back towards the parent. Full credit to him for the idea.

I was immediately able to visualize a BFS seach of this kind as ripple on a pond; whatever solution you hit first would be the shortest route (or tied for shortest route). Wanting inspiration, not a guide, I wrote my own code. Looking at qpongratz's work, I can see that his implementation was often more elegant than mine. 

However, I do note that his script can only handle one query at a time; any query after the first will throw an error. Debugging, I realised that although the method creates a new class object each time it is called, the class instance variable @@history remains. I added a reset function to my class that runs at the end of the method to allow multiple queries. I'm pleased with that particular addition.