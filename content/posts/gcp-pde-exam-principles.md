+++
date = "2022-05-03"
title = "GCP PDE Exam Principles"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Principles"]
categories = ["GCP Notes"]
+++

## Intro

This is a post in a series recording some notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

In this post, I provide some principles I am keeping in mind as I prepare for the exam.

## Disclaimer

The content of these posts is written *before* I have taken the exam.

I do not guarantee the accuracy or long-term reliability of these notes.

Use them at your own risk and always defer to Google's docs as [canon](https://en.wikipedia.org/wiki/Canon_(basic_principle)).

## GCP PDE Exam Principles

- [security] Follow the [Principle of Least Privilege](https://en.wikipedia.org/wiki/Principle_of_least_privilege)
- When between multiple options, the simplest answer is probably right
- When between multiple options, the cheapest answer is probably right
- An answer's complexity is likely proporitional to the questions' complexity
  - For example, simple questions like: "What is your favorite colour" probably has a simple answer
  - A more complex question (e.g. "What is the Air-Speed Velocity of an Unladen Swallow on a Tuesday in a head-wind of 30 kmph and 70% relative humidity") probably requires a more complex answer
- When creating Bigtable row keys, the key focus is to avoid hot spots
  - DON'T USE timestamp as start of rowkey for bigtable
- Prefer pre-trained ML models to custom-trained
  - These solutions are typically good enough for basic use-cases and can be implemented more quickly
- [security] Assign roles to groups and add users to groups (don't apply roles to users)
- If something is self-joined and running into problems when scaling, the answer likely involves normalizing
- If question mentions "realtime" and pub/sub, it probably requires a *push* from pub/sub rather than a pull
- [BQ] W/ multiple, wildcard tables, *partitioning* is best (over sharding)
- Typically, serverless/cloud-native solution is favorable over managed services or dedicated machines/VMs
- HDFS files should be stored in GCS
- It is not uncommon for multiple services to be used together (b/c each service is often optimized to do one thing very well)
- If the question involves "ANSI SQL", the answer probably involves BigQuery

