+++
date = "2022-05-05"
title = "Frustrations When Using Cloud Functions"
tags = ["Google Cloud", "Cloud Functions", "Serverless", "Frustration"]
+++

I've been [examining](/posts/gcp-serverless-compute-options/) Google Cloud's serverless compute options.

I've been trying to use Cloud Functions, but have found them extrodinarily frustrating.

My problems are:

1. Slow feedback loop
    - Slow feedback loops kill a dev's effectiveness... when deploying a new cloud function, it takes ≈ 30-40 seconds before one knows if something has failed - this is a *long* time to get feedback on a change
    - One really can't reasonably use cloud functions in the GUI - one would have to develop and test locally to make any workflow possible
2. A *ton* of clicking just to see what has gone wrong
    - If something does go wrong, (after waiting the 30-40 seconds to see that it has failed), one then has to click through a number of tabs/pages to view the logs... this is really frustrating for devs who are used to not having to take their hands off the keyboard
3. Odd UX when deploy fails
    - When a deploy fails and one tries to edit the function, one will find that the function is *not* the most recent version of the function... it's the *previously deployed* version of the function! So, if I write ten lines of code in a function, try to deploy it, and the deploy fails, I have lost the ten lines I added b/c the deploy failed!
    - This, in my opinion, violates the [principle of least astonishment](https://en.wikipedia.org/wiki/Principle_of_least_astonishment) and makes working with functions in the GUI absolutely impractical

All in all, I was disappointed to find Cloud Functions frustrating and largely impractical.
It is marketed as an 'easy', 'simple' way to run code, but I've found it is more hassle unless one is using docker to develop locally and deploying to a cloud function by pushing to a git repo.

