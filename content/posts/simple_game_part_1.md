+++
date = "2021-11-03"
title = "Simplified Scale Game"
description = ""
tags = ["Games", "Machine Learning"]
draft = true
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
- It costs one dollar to put a marble on the scale
- The player with the most weight on the scale is the winner
- If there's a winner, he/she gets one hundred dollars
- In case of a tie, the players split the one hundred dollars (getting fifty each)

Encoded in Python, this game could look like:

```python
from typing import Optional, Tuple

starting_marbles = 10
starting_money = 10


def final_money(scale) -> Tuple[int]:
    scores = ((starting_marbles - scale[0]), (starting_marbles - scale[1]))
    if scale[0] > scale[1]:
        return (scores[0] + 100, scores[1])
    elif scale[0] < scale[1]:
        return (scores[0], scores[1] + 100)
    else:
        return (scores[0] + 50, scores[1] + 50)


def winner(player_) -> Optional[str]:
    if money_tuple[0] > money_tuple[1]:
        return 'a'
    elif money_tuple[0] < money_tuple[1]:
        return 'b'


def place_marbles() -> int:
    """Determine how many numbers to play."""
    ...
    return player_one_marbles, player_two_marbles


def play():
    player_a_move, player_b_move = place_marbles()
    scale = (player_a_move, player_b_move)
    player_a_final_money, player_b_final_money = final_money(scale)
    victor = winner(player_a_final_money, player_b_final_money)

    if victor is not None:
        print(f'And the winner is player {victor}')
    else:
        print(f'It\'s a tie!')


play()
```

{{< simple-game-base >}}
