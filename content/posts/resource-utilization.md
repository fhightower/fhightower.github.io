+++
date = "2019-02-11"
title = "Conjecture on Resource Utilization"
description = "In this essay, I describe my conjecture on how humans tend to use resources with a particular focus on how this relates to software."
tags = ["Internet", "Resources", "Economics", "Software", "Threat Intelligence"]
+++

> We fifty-four were the masters of England! Twenty-five thousand men lay dead around us. But how treacherous is fortune! In a little while - say an hour - happened a thing, by my own fault, which - but I have no heart to write that. Let the record end here.<sup>1</sup>

<aside class="marginnote">
  <span class="noteNumber">1</span> - Written by "The Boss" (from <i>A Connecticut Yankee in King Arthur's Court</i>)
</aside>

> We were in a trap, you see - a trap of our own making... we had conquered; in turn we were conquered.<sup>2</sup>

<aside class="marginnote">
  <span class="noteNumber">2</span> - Postscript from Clarence (from <i>A Connecticut Yankee in King Arthur's Court</i>)
</aside>

> Power tends to corrupt and absolute power corrupts absolutely. Great men are almost always bad men, even when they exercise influence and not authority: still more when you superadd the tendency or the certainty of corruption by authority. There is no worse heresy than that the office sanctifies the holder of it.<sup>3</sup>

<aside class="marginnote">
  <span class="noteNumber">3</span> - Lord Acton (in his <a href="https://history.hanover.edu/courses/excerpts/165acton.html" target="_blank">letter</a> to Archbishop Mandell Creighton)
</aside>

> When the woman saw that the tree was good for food, and that it was a delight to the eyes, and that it was desirable to make wise, she took from its fruit and ate; and she gave also to her husband with her, and he ate.<sup>4</sup>

<aside class="marginnote">
  <span class="noteNumber">4</span> - Genesis 3:6
</aside>

> Awake, arise or be for ever fall’n.<sup>5</sup>

<aside class="marginnote">
  <span class="noteNumber">5</span> - Spoken by Satan in <i>Paradise Lost</i>
</aside>

---

### Thesis

One thing is clear about the internet age; it provides men with a scope and scale of resources hitherto unparalleled. This essay addresses, in a small way, how men tend to use the resources available to them. I will write with a particular focus on the internet and software, but the principles described here can probably be applied to other areas of economics and society in general.

My thesis is this:

> Regarding resources which can be used for evil and for good:
> 
> As the difficulty of procuring and using a resource increases, the probability of that resource being used for evil increases disproportionately to the probability of it being used for good.

Before explaining this further, I must address the elephant in the room: morality. My conjecture on resource utilization uses the terms "evil" and "good" and, thus, assumes some moral standard by which "evil" and "good" can be judged. As a Christian, I believe that God Himself is the standard of goodness and evil is that which is against His character and outside of His design. That being said, a morality rooted in the nature of the Christian God is not necessary to defend and understand my conjecture; one simply has to have some objective morality by which actions and uses of resources can be judged.

For the scope of this essay, let us assume a generally agreed-upon moral position like: "the intentional killing of innocent human beings is evil" and "protecting innocent human beings from being killed is good". Now that we have that settled<sup>6</sup>, what about my thesis?

<aside class="marginnote">
  <span class="noteNumber">6</span> - If this does not settle it for you, then there must be an immense canyon dividing our philosophies which is too great to be bridged in this essay. You may as well stop reading.
</aside>

My thesis is founded on the idea that there are certain resources (perhaps natural resources, time, energy, software available on the internet, or our natural abilities) that can be used to accomplish evil and can be used to accomplish good. For example, some people are naturally very persuasive. Considering this ability as a resource, it is possible to use this resource for good (e.g. to persuade someone not to kill someone else) or for evil (e.g. to persuade someone to kill an innocent person). In the software world, the existence of software projects that can be used for evil and good are everywhere; from [domain-squat creation algorithms](https://github.com/xn-twist/xn-twist) to [remote administration tools](https://securingtomorrow.mcafee.com/consumer/identity-protection/what-is-rat/). These tools can be used alternatively for good or evil based on the intentions of the user. This thesis seeks to describe only those resources which have relatively the same, innate probabilities of being used for good vs. evil. In other words, these are resource where there is nothing inherently limiting or inclining the use of the resources to evil or good.

My thesis also includes an assumption that some resources are more difficult to get and/or use. This is pretty self-explanatory (especially to anyone who has worked in IT, software development, or computer security), so I won't belabor the point. Just keep in mind that the procurement and use of all resources are not equal.

With these assumptions in mind, my thesis is the result of the question:

> Is there a way to determine whether or not a resource/technology is more likely to be used for good vs. evil?

At first blush, the answer is no, there is no clear way to determine whether a resource will be used for good vs. evil. We've assumed that we are only discussing resources which have no innate inclination toward good or evil, so there is nothing in the resource itself to give us a clue as to its potential use. The only entity that would make the use of a resource more or less likely to be used for good would be the users. For resources that are easy to procure and use, I posit that it is unlikely that we would be able to determine how a resource will likely be used. But what happens when the resource gets more difficult to procure and/or use? I propose that such resources are more likely and increasingly more likely to be used for evil. In other words, the more difficult a resource is to procure and/or use, it is more probable that the resource will be used for evil rather than for good. I believe this occurs for a number of reasons which vary based on the context and the nature of the resource, but I've identified a few, possible causes below focusing on the realm of software.

### Causes

<i>What, in my estimation, causes my conjecture to be true?</i>

In the realm of software and computer security, I believe my conjecture is true because:

1. Those who desire to do evil are generally more motivated than those who wish to do good.<sup>7</sup>
2. Those who desire to do evil generally do not have as many restrictions and boundaries (administrative, moral, and organizational) within which they must operate as those who do good - thus making it more likely for them to undertake and accomplish difficult tasks.
3. Those who desire to do evil generally are more invested in their work. Part of this occurs because those working to do evil are often working alone and are directly involved in a malicious operation (whereas those working for good are often part of a more structured team where there is more [plausible deniability](https://en.wikipedia.org/wiki/Plausible_deniability) and less buy-in).
4. Those who desire to do evil generally have more freedom to experiment and less pressure to perform in measurable ways - this allows them to experiment and be willing to 'waste' more time.

<aside class="marginnote">
  <span class="noteNumber">7</span> - This could probably be its own conjecture. In my anecdotal experience, this is generally true; doing the 'bad' stuff is cool and doing the 'good' stuff is boring.
</aside>

### Implications and Applications

<i>If my thesis is true, what are some implications and applications of this?</i>

Here are a few points that come to mind (specifically applicable to businesses in the computer security world):

- Teams that are seeking to use resources for good should pursue models that allow for experimentation with hard-to-procure and/or hard-to-find resources.
- Teams that are seeking to use resources for good should cultivate a culture that promotes freedom, experimentation, and buy-in. Each team member should feel that what he/she contributes is significant and that he/she is responsible for his/her actions.
- When creating publicly available software that could be used for evil or good, design the software with a bias towards the good use-cases rather than the evil ones.
- When creating publicly available software that could be used for evil or good, make it as easy to procure and use as possible. This will increase the probability that it will be used for good.
