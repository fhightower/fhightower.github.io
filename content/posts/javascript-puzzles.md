+++
date = "2018-07-05"
title = "JavaScript Puzzles: How Well do you Know Javascript?"
description = "Javascript puzzles to test your understanding of Javascript."
tags = ["Javascript", "Programming", "Puzzles"]
+++

Here are a couple of fun Javascript puzzles I've created/found to demonstrate important Javascript gotchas. There are answers/explanations near the bottom of the page.

# Puzzles

## Variable Scoping

As I'm learning [Typescript](https://www.typescriptlang.org/index.html), I was reading through the docs and ran across a fascinating little code snippet demonstrating [variable scoping gotchas](https://www.typescriptlang.org/docs/handbook/variable-declarations.html#variable-capturing-quirks) in javascript. The question was:

What is the output of the code below?

```javascript
for (var i = 0; i < 10; i++) {
    setTimeout(function() { console.log(i); }, 100 * i);
}
```

*Think about it and check your [answer](#variable-scoping-answer) below.*

## Indexing an Object's Properties

I came up with this puzzle to demonstrate the difference between accessing the value of an Object using a dot versus using brackets (e.g. `data["test"]` vs. `data.test`).

What is the output of the code block below?

```javascript
var data = {
    0: "zero",
    i: "eye"
};

for (var i = 0; i < 1; i++) {
    console.log(data[i]);
    console.log(data.i);
}
```

*Think about it and check your [answer](#indexing-an-object-s-properties-answer) below.*

<hr>

# Answers

## Variable Scoping Answer

Most people expect, as did I, that this code would output:

```
0
1
2
3
4
5
6
7
8
9
```

when in fact, the output is:

```
10
10
10
10
10
10
10
10
10
10
```

This occurs because the `setTimeout` function will not run until the for loop has finished. By the time the for loop has finished, the value of variable `i` is 10. Each of the functions called by the `setTimeout` function is looking at the same `i` from the same scope, so they all log `10`.

## Indexing an Object's Properties Answer

The output of this code puzzle is:

```
zero
eye
```

This occurs because the first, and only, time through the for loop the value of `i` is 0 (zero). When I call `console.log(data[i]);`, javascript starts inside the brackets by getting the value of `i` (which is 0). Thus, the first logging is equivalent to saying `console.log(data.0);` and outputs 'zero'.

In the second logging (`console.log(data.i);`), javascript does not get the value of `i`, but instead treats "i" as a literal key. Thus, this is equivalent to saying `console.log(data["i"]);` which outputs 'eye'.

Give these puzzles to your friends and enjoy as they over-think them and second-guess themselves!
