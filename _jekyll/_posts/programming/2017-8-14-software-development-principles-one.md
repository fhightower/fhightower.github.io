---
layout: post
title: "Software Development Principles 1: Snippets"
description: "Why you should use and write snippets."
category: programming
tags:
    - Sublime Text
    - Snippets
    - Programming
---

If the titles of my [git repositories](https://github.com/fhightower?utf8=%E2%9C%93&tab=repositories&q=snippet&type=&language=) didn't give it away, I use [Sublime Text](https://www.sublimetext.com/) and write a lot of [snippets](http://docs.sublimetext.info/en/latest/extensibility/snippets.html). My goal in this blog post is to discuss *why* I write so many snippets and encourage others to do the same. There are plenty of good resources out there on [how to create snippets for Sublime Text](http://www.hongkiat.com/blog/sublime-code-snippets/), but very little discussion about *why* snippets are useful... and whether there are any dangers that come with using snippets.

First, what is a snippet? In one sentence, a snippet (in Sublime Text) is a saved piece of code that you easily add to other code by typing a certain phrase and hitting `TAB`.

So why do I advocate (and practice) the use of snippets? There are a few obvious reasons for using snippets:

1. It allows one to write code more quickly. Pretty obvious... and boy does it work!
2. It makes coding more enjoyable because you don't have to spend time typing configurations that you are familiar with. You can get to the fun parts of an algorithm more quickly and make the busy-work a breeze.
3. When shared, snippets will help as many people as you share it with become more effective.

In addition the these advantages, I think there is another, often overlooked, benefit of using snippets:

- Using snippets across a team or community allows you to more easily standardize your code. Want to standardize how your team imports a configuration file? Snippets will do the trick. Want to make sure your team is using the `with open('file.txt', 'r') as f:` paradigm in python? Make it easy by creating a [snippet](https://github.com/fhightower/public-sublime-snippets/blob/master/python/withopenas.sublime-snippet). When used tactfully, snippets make it easy to do things the right way.

But are there any dangers of using snippets? I believe there are. I do not think they outweigh the benefits, but a few things to be aware of when it comes to using snippets:

1. Snippets can become a crutch. Especially for users that are new to a programming language, SDK, or other paradigm and who haven't 'struggled' doing things the hard way (without snippets), snippets can provide them with a easy way forward, but may prevent them from actually learning the new system. This is why I recommend that people do things the hard way (again, without snippets) for a while before they start relying heavily on snippets. Given enough time, this can even be a danger for a seasoned veteran. Every now and then (ok, more often than that) I find myself writing python on a server using vi and draw a complete blank on how to using [configparser](https://docs.python.org/3.6/library/configparser.html) or something of that nature. Snippets are helpful, but they can become a crutch.
2. Snippets can encourage poor code structure by making it easier to add duplicate code in the same file/project. I have seen instances (and have found myself doing this too) where programmers have used snippets to add the same code in two, three, or even four places in the same file. It's just so easy!

As I said, I don't feel any of these dangers trump the, many, benefits of snippets. I'll discuss these in future blog posts as well, but here are some tools for creating and documenting snippets that you may find helpful:

- [Snippet Creator](https://github.com/fhightower/sublime-snippet-creator) - Automatically create Sublime Text snippets from code.
- [Snippet Documenter](https://github.com/fhightower/sublime_snippet_documenter) - Script to pull descriptions from Sublime snippets and add them to a repository's readme.
