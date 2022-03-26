+++
date = "2021-11-03"
title = "Simplex: A Simple, Extensible Game for Exploring Machine Learning"
description = "Describing a game which provides a good environment for exploring machine learning."
tags = ["Games", "Machine Learning", "Clojure", "Python", "Simplex"]
+++

## Simplex

As I'm exploring machine learning, I have found it helpful to have a simple game I can use as a context in which to test ideas.
This blog post describes one such game.
I call it "Simplex". The game is trivially simple, but can be extended to make it more challenging.

The game works as follows:

- There are two players ('a' and 'b')
- Each player gets only one move which is made simultaneously with the other player
- Each player has one marble
- Each marble weighs one unit
- For each move, players choose how many marbles to place on his/her side of a scale
- The winner is the player with the most weight on their side of the scale 

You can read, run, and edit an implementation of this game in Clojure (and Python) [here](https://nextjournal.com/fhightower/scale-game-part-1).

In future posts, I'll examine:

- Different approaches to playing this game (including machine learning strategies)
- How these approaches change when the game changes

