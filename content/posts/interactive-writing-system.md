+++
date = "2021-11-26"
title = "Interactive Writing System"
description = "Describing requirements for an interactive writing system."
tags = ["Blogging", "Writing", "Interactivity"]
+++

## Interactive Writing System

### What are interactive systems?

I will not, in this blog post, consider the essential and non-essential properties of interactive systems.
I will simply assert that an essential characteristic of interactive systems is a short feedback loop.

### The problem

For some reason, we (as humanity and software developers) have relegated ourselves to static systems and tools.
We have eschewed interactivity. In this blog post, I will not examine why this is the case, but will note examples
of this problem and describe a system which would introduce interactivity to the technical blog writing world.

#### Examples of the problem

Most technical blogs I have seen include either code snippets (which are static and can't be run/edited) or screenshots of code.
There is no way to run the code without exporting it (usually via copy/paste) into an appropriate environment.
One can imagine what the code will do or read the blog post describing what it does, but one cannot easily
interact with the code to learn what it does and how it works.

### Requirements for an interactive writing system

There are two actors in any writing system (be it a printing press, pen and paper, or blog post):

1. Writer
2. Reader

The writer should be able to:

- Write prose and code (from multiple languages)
- Trust that the finished product will look like what is written
- Run the code live (and choose whether the code and/or its output will be shown)

The reader should be able to:

- Edit and run all/most code snippets w/o putting significant effort into creating a new environment to run the code
- Export/save edited content locally
