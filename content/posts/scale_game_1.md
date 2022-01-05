+++
date = "2021-11-03"
title = "Simplified Scale Game"
description = "Describing a game which provides a good environment for exploring machine learning."
tags = ["Games", "Machine Learning", "Clojure, "Python"]
+++

# Simplified Scale Game

As I'm exploring machine learning, I have found it helpful to have a simple game I can use as a context in which to test ideas.
This blog post describes one such game.
I call it the "Scale Game". The version I'm going to describe is the simplified version of the game.

The game works as follows:

- There are two players (players 'a' and 'b')
- Each player in the game gets one turn
- Each player makes his/her turn simultaneously (at least without knowledge of the other player's move)
- Each player starts with ten marbles and ten dollars
- Each marble weighs one unit
- Each player chooses how many marbles of his/her marbles to place on his/her side of the scale

Here are some rules we'll start with, but will change over time:

- It costs one dollar to put a marble on the scale
- The player with the most weight on the scale is the winner
- If there's a winner, he/she gets one hundred dollars
- In case of a tie, the players split the one hundred dollars (getting fifty each)

You can read, run, and edit an implementation of this game in Clojure (and Python) [here](https://nextjournal.com/fhightower/scale-game-part-1).

In future posts, I'll examine:

- Different approaches to playing this game (including machine learning strategies)
- How these approaches change when the game changes
