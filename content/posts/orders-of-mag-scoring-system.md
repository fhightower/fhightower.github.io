+++
date = "2022-07-17"
title = "Orders of Magnitude Scoring System"
description = "A scoring system whose values are orders of magnitude different from one another can be very helpful in a multitude of use-cases. This post describes what such a system is and why it can be helpful."
tags = ["Math", "Scoring Systems", "Exponentials", "Orders of Magnitude"]
+++

While this idea is original to me, I am confident I am not the first person to come up with this idea.
I have not, however, been able to find this idea mentioned anywhere (after a cursory search).

## The Use-Case

There are cases in which using counting numbers for a scoring system does not work because the difference between n and n+1
are not sufficiently differentiated. For example, in a scoring system that seeks to score books based on the number of years one
would wait before reading a book again, the difference between waiting 6 versus 7 years to read a book again is trivial making it
hard for scoring a book to choose a reasonable number.

## The Scoring System

My "Orders of Magnitude Scoring System" requires that the n+1-th score be an order of magnitude larger than the n-th score.
Perhaps the simplest such system for our base-ten minds uses the number 10 as the base.
The possible scores of this system will be:

- 1 (10^0)
- 10 (10^1)
- 100 (10^2)
- 1000 (10^3) ...

Thinking back to our example about a scoring system for books in which one provides the number of years one
would wait before reading a book again, I think it is easy to see how this scoring system is easier to use as it avoids the challenge
of differentiating adjacent values (e.g. 6 versus 7 years).

Another use case where I've found this system helpful is capturing how long one estimates a task to take.
When making such estimates, it is hard to estimate the difference between 6 or 7 hours (or 50 vs. 60 hours),
but using scores which are orders of magnitude different from one another make this task much easier
(assuming you can tolerate the loss of precision when having to round to the nearest option).
I use an order of magnitude system to estimate time cost for issues in the
[ioc-finder](https://github.com/fhightower/ioc-finder/labels?q=time) project, for example.

## Similar Systems

This kind of scoring system is a subset of what could be called "Exponentially Scaled Scoring Systems" where the n+1-th score must be exponentially larger than the n-th score.

