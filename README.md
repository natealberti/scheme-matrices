# scheme-matrices
Functions to traverse and manipulate matrices in Scheme

The task was to create two functions: getCell and setCell. A matrix in scheme is written as a nested list, so it may look something like: '( ( 2 4 6 8 ) ( 1 3 5 7 ) ( 2 9 0 1 )).

getColumnsHelper is a helper function which makes it possible for getColumns to be recursive. getAtColumns is also a helper function, it returns what item is at the specified index in the one dimensional matrix (or just a regular list). replaceList has a similar function, but instead of just returning what is at the index it changes it to the desired item.
