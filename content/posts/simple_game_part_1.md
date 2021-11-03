+++
date = "2021-11-03"
title = "Simple Game"
description = ""
tags = ["Games", "AI"]
draft = true
+++

# Simple, Balance Game

```python
import random
import statistics

starting_marbles = 10
starting_money = 10


def randomly_choose_marbles_to_place():
    return random.randint(0, starting_marbles + 1)


def final_money(scale):
    scores = ((starting_marbles - scale[0]), (starting_marbles - scale[1]))
    if scale[0] > scale[1]:
        return (scores[0] + 100, scores[1])
    elif scale[0] < scale[1]:
        return (scores[0], scores[1] + 100)
    else:
        return (scores[0] + 50, scores[1] + 50)


def winner(money_tuple):
    if money_tuple[0] > money_tuple[1]:
        return -1
    elif money_tuple[0] < money_tuple[1]:
        return 1
    else:
        return 0


def _internal_tests():
    most_wins = 0
    best_choice = 0

    current_choice = -1
    current_wins = 0

    iteration_count = 10

    while current_choice < starting_marbles:
        current_choice += 1

        for _ in range(iteration_count):
            if winner(final_money(scale)):
                current_wins += 1
        
        if current_wins > most_wins:
            most_wins = current_wins
            best_choice = current_choice

    return best_choice


def smart_move():
    best_move = _internal_tests()
    return best_move


def test():
    scale = (randomly_choose_marbles_to_place(), smart_move())
    return final_money(scale)


results = (winner(test()) for _ in range(100000))

statistics.mean(results)
```

{{< simple-game-base >}}
