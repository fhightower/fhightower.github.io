+++
date = "2022-04-29"
title = "BigQuery in a Nutshell"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "BigQuery", "SQL", "Data Warehouse"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post covers BigQuery in a nutshell.

## Disclaimer

Please read [this disclaimer](/posts/gcp-notes-disclaimer/).

## BigQuery

- Fully managed, petabyte-scale data warehouse/analysis service
- Has two components:
  - Storage (built on "Colossus")
  - Query/Processing Engine
- Good for [federated searching](https://en.wikipedia.org/wiki/Federated_search)
- Column-based storage
- Allows [ANSI SQL](https://blog.ansi.org/2018/10/sql-standard-iso-iec-9075-2016-ansi-x3-135/) compliant queries
- Includes good support for:
  - Building (basic) ML models
    - Logistic regression - classifying categories
    - Linear regression - forcasting # values
  - GeoViz
  - Structs
    - Allows horizontal storage
    - Look like: `event.status`
    - Identifiable where type=`RECORD`
  - Arrays
    - Allows vertical storage
    - Identifiable where mode=`REPEATED`
  - Analytic window functions using `LAG`
  - Named subqueries using `WITH`
    - Pre-processes data which can be cached for future queries
- Optimization:
  - Partition tables
    - Group data into sections allowing BQ to scan less data
    - Partition pruning occurs *before* the query is run, allowing you to know costs up-front
    - Common partition source is dates/times
    - ≈ an index row wrapping the entire table
  - Clustering
    - Can be done against multiple columns
    - Clustering is applied *while* the query is run, so you don't know how much the query will cost and how much cluster will save you
    - More granular than partitioning
- Typically populated in batch inserts
  - Offers streaming inserts to allow smaller queries, run more often, w/ lower latency, and at a higher cost
  - Max streaming capability ≈ 100,000 rows/table/sec.
- Offers access control at project, dataset, and table/view levels

## Similar Systems

### BigQuery vs. BigTable

Among many other differences:

BigTable is designed for long, narrow tables.

BigQuery typically has short(er), wide(r) tables.

