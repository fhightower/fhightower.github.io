+++
date = "2022-05-04"
title = "GCP Databases in a Nutshell"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Database", "Cloud SQL", "Bigtable", "Spanner", "Firestore"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post covers Cloud Composer in a nutshell.

## Disclaimer

Please read [this disclaimer](/posts/gcp-notes-disclaimer/).

## Databases

### Grouped by Management Model

#### Managed Services

- Cloud SQL
- Cloud Spanner
- Cloud Bigtable

#### Serverless Services

- Cloud Storage
- Firestore

### Grouped by Size/Relationality

Size of Data: | Small | Large
-- | -- | --
Relational | Cloud SQL | Spanner\*
Non-Relational | Firestore\*\* | Bigtable

\* The option of using processing units as the means of calculating cost for Spanner makes it a better option for smaller solutions
\*\* Firestore can handle large amounts of data too when provisioned correctly, but it *can* be used for small applications where-as Bigtable really isn't/shouldn't be used for small use-cases

### Grouped by Proprietary-ness

#### Google Proprietary

- Spanner
- Firestore

#### Generic

(data in these systems could be easily transfered on-prem. or to a diff. cloud provider)

- SQL
- Bigtable (h-base compatible)

### Transaction Support

#### ACID Transactions

- SQL
- Spanner
- Firestore

#### Row-Level Transactions

- Bigtable

