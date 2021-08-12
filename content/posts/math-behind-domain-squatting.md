+++
date = "2019-02-23"
title = "Domain Squatting Math"
description = "I was recently talking with a friend about the challenges of finding domain squats. Systems which grow at non-linear rates tend to catch us, as humans, off guard. This posts in a brief discussion on the math behind finding domain squats and the challenges inherent in the problem."
tags = ["Domain Squatting", "Threat Hunting", "Exponentials"]
+++

> "Compound interest is the eighth wonder of the world. He who understands it, earns it ... he who doesn't ... pays it."
> 
> ― Albert Einstein

## What is domain squatting?

Domain squatting is when someone registers a domain name which looks like another domain name. Usually, the term "domain squatting" is used in a context where malicious intent is implied. For example, someone trying to steal passwords may register the domain name `gooogle.com` (with an extra `o` in it). This way, he/she could send emails to potential victims with links to `gooogle.com` and the potential victims would be more likely to mistake this domain for the real thing and click the links.

## The math of domain squatting

The are [numerous](https://github.com/xn-twist/xn-twist) [algorithms](https://github.com/elceef/dnstwist) available to find domain squats for a given domain, but the difficulty is that finding domain squats for a given domain is computationally difficult and demonstrates exponential growth. Let's examine this a bit more.

For starters, how many possible domain squats are there for `abc.com`? Let's assume the [top level domain](https://en.wikipedia.org/wiki/Top-level_domain) (e.g. `.com`) remains the same - we'll just focus on the `abc` bit. Let's also pretend that there are two characters which can replace each of the characters in `abc`. In other words, we can replace `a` with `а` (a character from the Cyrillic alphabet) or `α` (a character from the Greek alphabet) and we can replace both `b` and `c` with two other characters as well. So, for each character in `abc`, we have three options:

1. Replace it with the first option
1. Replace it with the second option
1. Keep it the same

For each character, we have the three options we listed above, so all possible combinations amount to: `3 * 3 * 3 = 27`. But, one of the twenty seven configurations is one in which all of the characters in the original domain are kept the same. Because this does not constitute a domain squat, we remove this one to get `26` as our final answer. A domain with three characters and an average of two replacements per character can produce twenty six domain squats!

We can represent the number of domain squats formulaically as:

```
((r + 1) ^ n) - 1
```

where

- `r` is the number of characters which can replace each character in the domain
- `n` is number of characters in the domain

Thus, the number of possible replaces for a domain name that is 10 characters long assuming we can replace each character with 10 other characters is: `((10 + 1) ^ 10) - 1 = (11 ^ 10) - 1 = 25,937,424,600`. 25 **billion** possible domain squats! This is the challenge of finding domain squats; it is a system that grows exponentially. What if we keep everything the same, but find domain squats for a domain which is 11 characters long? That works out to be: `10 ^ 11 = 285,311,670,610`. 285 **billion**! If you were to plot 25 billion on a number line stretching between zero and 285 billion, it would look something like:

`0....|............................................285,000,000,000`

Adding one more character to our domain name, we have exponentially increased the possible squats.

Below is some [clojure](https://clojure.org/api/cheatsheet) code you can play with to find the number of domain squats for domains of various lengths. Notice that adding one character to a domain's length increases the amount of time required to find all domain squats exponentially (non-linearly)!

{{< domain-squats >}}
