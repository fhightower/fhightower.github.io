---
layout: post
title: Why You Should Stop Sharing IOCs on Twitter
description: "If you only share indicators on twitter, you can do better for yourself and for others in the industry."
category: threat-intelligence
---

If you regularly share IOCs ([Indicators of Compromise](https://en.wikipedia.org/wiki/Indicator_of_compromise)) on twitter and don't share those  IOCs in any other location, you need to find a more effective place to share your data; for your own good, for the good of others in the computer security space, and for the good of every human being that uses the internet.

### TL;DR

If you only share IOCs and/or threat intelligence on Twitter, you are depriving yourself of a résumé you can show off and a data source you can build out and enrich over time. You are also making it hard for your friends in the computer security industry to access and use your data which, in turn, means that less people benefit from the information you share. Consider starting a blog ([github pages](https://pages.github.com/) are quick, easy, and free!) or getting a free [ThreatConnect](https://app.threatconnect.com/auth/index.xhtml) account to produce, share, and enrich you data more effectively. In the same way that not all data of equal value, it is also true that not all methods of sharing data are equally effective. Find somewhere to share your data in a way that is most effective.

### Full Argument

In 2014, David Bianco introduced the idea of the [pyramid of pain](https://www.youtube.com/watch?v=zlAWbdSlhaQ). Far from being a grueling fitness regimen, the computer security pyramid of pain describes the increasing levels of 'pain' that can be inflicted upon an adversary by understanding and acting on different forms of data or intelligence. For example, near the bottom of the pyramid (describing things that inflict very little pain on an adversary) are things like file hashes and IP Addresses. If I find, share, and block the sha256 hash of a malicious file, it is a trivial matter for most adversaries (those with the capability to at least edit a piece of malware) to quickly change the hash. Adding a character will change the hash. Identifying and blocking a hash is nice, but is of very little impact on the adversary in the long run. Identifying fuzzy hashes (like an ssdeep hash) or better yet a unique string used in the malware will be more effective and let me be more effective in identifying the adversary's activities. Better yet is understanding an adversary's operating procedures and common behavior patterns. At this point, you can begin to monitor, track, and stop the adversary much more effectively than simply blocking hashes that come in from some feed.

![Computer Security Pyramid of Pain](/photos/Pyramid of Pain.png)

If the pyramid of pain teaches us anything, it is that not all data or intelligence is created equally. That is to say that it is not equally effective. I posit that the same is true of how you distribute your data and intelligence.... it's not just what you have to share, but also how (and why). 

And this brings me back to my primary thesis: you should find a place to share IOCs and intelligence in a way that is more impactful than Twitter. Doing so has many benefits both to you and others in the computer security industry. First, it benefits you by providing you with one place where you can search, enrich, and show off your data. Ideally, you should try to find something that can be both a résumé and an analytical playground (some system that provides you with the tools you need to do analysis). Second, it's better for everyone in the computer security industry because your data is more accessible and usable. Assuming you find a good place to share your data, more people can get at it, enrich it, and build off of what you have done. This, in turn, enhances the security of organizations and users around the world and makes the internet a safer place.

"So if I don't use Twitter, what should I use?" Great question! Personally, I use [ThreatConnect](https://app.threatconnect.com/auth/index.xhtml). I find it has a lot of tools for enriching indicators and it allows users to share intelligence and work together to develop intelligence. I know blogs are another very popular way to share IOCs and I think this can be effective (certainly more than Twitter). The downside of blogs is that is is harder to update data and a blog doesn't have built-in enrichment tools like whois and dns data; that being said, a blog can be a great place to start. Starting a [github page](https://pages.github.com/) is free and easy.

Changing the way you share IOCs and intelligence will be hard, but well worth it once you begin to develop a résumé of content you can share with others and use as a starting point for future investigations. Find a rabbit hole and enjoy it!