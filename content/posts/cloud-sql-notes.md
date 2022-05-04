+++
date = "2022-04-29"
title = "Cloud SQL in a Nutshell"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Cloud SQL", "Relational Database", "Database"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post covers Cloud SQL in a nutshell.

## Disclaimer

Please read [this disclaimer](/posts/gcp-notes-disclaimer/).

## Cloud SQL

- Offers:
  - MySQL
  - Postgres
  - Micro$oft SQL server
- High Availability through data replication through zones in a region (and failover - there are VMs in each zone in case one fails)
- Can transition to Spanner pretty easily

