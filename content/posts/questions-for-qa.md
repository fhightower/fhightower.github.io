+++
date = "2018-07-25"
title = "Questions for QA"
description = "Abstract questions to ask when performing QA."
tags = ["Quality Assurance", "Programming"]
+++

In doing QA-esque things for friends and coworkers, I have noticed that some people do not have a good sense of how to 'QA' something. I compiled a short list of questions below that I ask myself.

## Testing Inputs

Does the system handle<sup>1</sup>...

<aside class="marginnote">
  <span class="noteNumber">1</span> - Defining the word "handle" can be tricky and the definition and standards change from project to project. In most projects, a system can be said to "handle" input well if it either works with the given input or fails gracefully (showing a helpful error message with instructions for fixing or avoiding the problem).
</aside>

### Different Quantities

- a little input?
- a lot?
- A LOT?
- nothing?
- a 'normal' amount?
- one value that is really short?
- one value that is really loooonnnnnnggggg?

### Different Qualities

- something of a weird type?
- input that is already in the system?
- uppercase?
- lowercase?
- input with special characters (e.g. Unicode) in it?

## Testing Workflows

- go forward
- go backwards from each step
- go back-and-forth between steps
