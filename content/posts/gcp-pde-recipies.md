+++
date = "2022-05-03"
title = "GCP PDE Recipies"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "BigQuery", "Dataflow", "Pub/Sub", "Bigtable"]
categories = ["GCP Notes"]
+++

## Intro

This is a post in a series recording some notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

In this post, I provide some common recipies which are commonly used in Google Cloud.

## Disclaimer

Please read [this disclaimer](/posts/gcp-notes-disclaimer/).

## GCP PDE Recipies

### The Classic

Pub/Sub -> Dataflow -> BQ (batch inserts)

Variations:

- Pub/Sub -> Dataflow -> BQ (streaming inserts)
- Pub/Sub -> Dataflow -> Bigtable -> BQ (querying Bigtable using federated query)
  - For use-cases which require analytics *and* the low-latency afforded by Bigtable

### Uploading Data to Google Cloud

- gsutil
  - on-prem. (if practical based on network bandwidth and data size)
- Storage Transfer Service
  - From another storage provider
- Transfer Appliance
  - Physical hard-drive you fill and send back
  - For large amounts of data on-prem. and/or in a low-bandwidth location which makes gsutil impractical

