+++
date = "2022-04-29"
title = "Spanner in a Nutshell"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Spanner", "Relational Database", "Database"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post covers Spanner in a nutshell.

## Disclaimer

Please read [this disclaimer](/posts/gcp-notes-disclaimer/).

## Spanner

- Horizontally scalable
- No-ops
  - Only change needed is to add nodes
  - Add another node if CPU > 70-75%
  - Each node can handle 1.5 - 2 TB
- Can create linked/embeded tables
  - Helps avoid the cost of joins for normalized tables
- Two payment methods:
  - Pay-by-node: standard method
  - Pay-by-processing-unit: let's you pay for more granular operations/scale
  - 1 node = 1,000 processing units

