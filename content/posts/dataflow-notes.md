+++
date = "2022-05-03"
title = "Dataflow in a Nutshell"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Dataflow"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post covers Dataflow in a nutshell.

## Disclaimer

The content of these posts is written *before* I have taken the exam.

I do not guarantee the accuracy or long-term reliability of these notes.

Use them at your own risk and always defer to Google's docs as [canon](https://en.wikipedia.org/wiki/Canon_(basic_principle)).

## Dataflow

- Serverless
- Wraps apache beam
  - Handles batch *and* streaming data
- Typically, more effecient scaling than Dataproc
  - Therefore, it's typically cheaper than Dataproc
- Used internally at Google
  - Improved by Google over time
- Know about [windowing](https://cloud.google.com/dataflow/docs/concepts/streaming-pipelines#windows)
  - `fixed` window in java/python ≈ `tumbling` in SQL
  - `sliding` ≈ `hoping` in SQL
  - session (is the same for both SQL and java/python)
- Know about [watermarks](https://cloud.google.com/dataflow/docs/concepts/streaming-pipelines#watermarks)

