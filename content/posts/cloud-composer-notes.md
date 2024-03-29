+++
date = "2022-04-29"
title = "Cloud Composer in a Nutshell"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Cloud Composer"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post covers Cloud Composer in a nutshell.

## Disclaimer

Please read [this disclaimer](/posts/gcp-notes-disclaimer/).

## Cloud Composer

- Managed Apache Airflow
- Create DAGs ([Directed Acyclic Graph](https://en.wikipedia.org/wiki/Directed_acyclic_graph))
- Scheduling:
  - Periodic (pull) (specified in the Airflow GUI - e.g. every day at noon)
  - Event-driven (push) (e.g. when new data is uploaded to GCS)

