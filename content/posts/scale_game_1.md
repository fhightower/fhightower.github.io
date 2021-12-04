+++
date = "2021-11-03"
title = "Simplified Scale Game"
description = "Describing a game which provides a good environment for exploring machine learning."
tags = ["Games", "Machine Learning"]
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


def calculate_payout(player_a_move, player_b_move) -> Tuple[int]:
    money = ((starting_marbles - player_a_move), (starting_marbles - player_b_move))
    if player_a_move > player_b_move:
        return (money[0] + 100, money[1])
    elif player_a_move < player_b_move:
        return (money[0], money[1] + 100)
    else:
        return (money[0] + 50, money[1] + 50)


def find_winner(player_a_money, player_b_money) -> Optional[str]:
    if player_a_money > player_b_money:
        return 'a'
    elif player_b_money > player_a_money:
        return 'b'


def get_marbles_to_place() -> int:
    """Determine how many numbers to play."""
    # these values are just demonstrative... we'll update them later
    player_a_marbles = 5
    player_b_marbles = 10

    return player_a_marbles, player_b_marbles


def play():
    player_a_move, player_b_move = get_marbles_to_place()
    player_a_payout, player_b_payout = calculate_payout(player_a_move, player_b_move)
    victor = find_winner(player_a_payout, player_b_payout)

    if victor is not None:
        print(f'And the winner is: player {victor.upper()}')
    else:
        print(f'It\'s a tie!')


play()
```

{{< scale-game-base >}}

In future posts, we'll explore some ways to programmatically play this game.