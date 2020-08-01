# Game of Life

Ruby solution to John Conway's 'Life' celullar automaton.

## How life works

1. Any live cell with **<2** live neighbours _perishes_.  
2. Any live cell with **2 || 3** live neighbours _lives_.  
3. Any live cell with **>3** live neighbours _perishes_.  
4. Any dead cell with **== 3** live neighbours _comes alive_.

## Local usage

>require and specify

```bash
>$ irb

  2.7.0 :001 > require './path_to_file/pattern.rb'
  2.7.0 :002 > require './path_to_file/board.rb'
  2.7.0 :003 > require './path_to_file/cell.rb'
  2.7.0 :004 > require './path_to_file/game.rb'

  2.7.0 :005 > game = Game.new
```

>set start pattern
>_loaf, toad and test are valid_

```bash
>$
  2.7.0 :006 > game.condition('test')
```

>run with period _n_

```bash
>$
  2.7.0 :007 > game.start(n)
```

### Testing

Using `rspec` and `simplecov` for coverage

```bash
>$ rspec
```

## User Stories

As a Developer,
To pay homage to the late Conway,
I would like to recreate the Game of Life.
  
As a cell,
To be able to exist in my world,
I can detect the state of cells around me.  
  
As a user,
To be able to interact with the game,
I can choose my starting conditions  
  
As a cell,
To be able to grow,
I  switch off if I have 3 live neighbours.  
  
As a cell,  
To be able to perish,  
I would like to switch off If I have more than 3; or less than 2 neighbours.  

### In the works
  
As a user,  
So I can experiment,  
I would like to upload grid configurations to the application.  
  
As a user,  
To be able to see the game,  
I would like to visualise results in a command line interface.  
