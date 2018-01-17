---
layout: post
title: "Software Development Principles 2: A Decent Workflow"
description: "A decent workflow to follow to build high quality, effective software."
category: programming
tags:
    - Workflow
    - Process
    - Programming
---

When working on a decently large project (anything that is more than a quick script or POC), my software development process is made up of three steps:

- Moving Forward
- UI/UX Improvements
- Review/Cleaning

I don't have a catchy acronym for this (yet), but it is a helpful way to break down a project. My projects are a continuous cycle through these three steps. So what does each step consist of?

1. **Moving Forward** - This step involves any action that moves you toward the end goal of the project. This often means adding a new feature, but it may involve removing a feature. It is a significant change to code that is not a UI/UX change.
2. **UI/UX Improvements** - This step involves making improvements (not to be confused with changes) that enhance both a human's *ability* to use the system and the *joy* he/she experiences while doing so.
3. **Review/Cleaning** - This step involves improving code quality (not adding any new features, but cleaning up what you already have), writing scripts/tools/[snippets](http://hightower.tk/2017/08/software-development-principles-one/) to make it easier to write better code moving forward, writing tests, and planning out the next "Moving Forward" phase.

For example, in a simple app that gives every user a profile to which they can upload photos, a **Moving Forward** step might include adding the ability for one user to 'like' another user's photo. To add this feature, the creator(s) of the app would add everything from the database up to the UI that is required to 'like' a photo. The UI and UX of this new feature may not be perfect or ideal, but it is present and usable. The next step of **UI/UX Improvements** would entail improving the UI and UX of the UI elements involved in 'liking' a photo. Should the button for liking a photo be thumbs up? A star? A heart? What happens when the user clicks the button? Questions like this should be answered and implemented in a way that improves the UI and UX of the feature that was just added. Next, the **Review/Cleaning** step might include writing more robust tests for the new 'like' feature. Writing broad, robust tests are hard. Hopefully when a new feature has tests associated with it when it ships, but those tests may need to be expanded to check for edge cases. This review/cleaning step would also look back at the last two steps to identify what went well and what went poorly (and how to keep doing things well and stop doing things poorly). Lastly, the creator(s) of the app would take some time during this step to think about what the next improvement will be.

This three-step process has worked well for me and is flexible enough that it can be applied to many different projects and use-cases.

Enjoy and happy coding!
