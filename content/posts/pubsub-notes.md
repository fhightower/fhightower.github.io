+++
date = "2022-04-29"
title = "Pub/Sub in a Nutshell"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Pub/Sub"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post covers Pub/Sub in a nutshell.

## Disclaimer

The content of these posts is written *before* I have taken the exam.

I do not guarantee the accuracy or long-term reliability of these notes.

Use them at your own risk and always defer to Google's docs as [canon](https://en.wikipedia.org/wiki/Canon_(basic_principle)).

## Pub/Sub

- Fully managed, data ingestion and distro. system
- Async., real-time message bus
- Good soln. for buffering changes for lightly-coupled architectures
  - P/S decouples publishers and subscribers
- HIPPA compliant
- Stores data for up to 31 days
  - Default is 7 days
- Has topics and subscriptions
  - Data is published to a topic
  - Subscriptions dictate who recieves content for which topics
  - Relationship btw. topics and subscriptions can be one:one or one:many
  - Relationship btw. publishers and subscribers and can be one:many, many:one, or many:many
  - Multiple subscribers can work on a single subscription
- Guarantees "at least once" delivery
  - May send duplicate and/or out-of-order messages
- Two options for delivery:
  1. Push (from pub/sub to subscriber)
  2. Pull (from subscriber to pub/sub)
    1. Sync. - "Give me *n* messages"
    2. Async.
      - Higher throughput
      - Better for latency-sensitive applications
- Two, primary use-cases:
  1. Streaming analytics/ingestion of data into analytic systems
  2. Async. workflows w/ decoupled publishers and subscribers

