+++
date = "2022-04-29"
title = "GCP Paradigms"
tags = ["Google Cloud", "Professional Data Engineer Certfication"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post lists paradigms and categories which are helpful to know when working with GCP.

## Disclaimer

The content of these posts is written *before* I have taken the exam.

I do not guarantee the accuracy or long-term reliability of these notes.

Use them at your own risk and always defer to Google's docs as [canon](https://en.wikipedia.org/wiki/Canon_(basic_principle)).

## Paradigms

### Data Lakes, Data Warehouses, and Databases

A **data lake** is typically a place to store/replicate raw data.

A **data warehouse** is typically a place to store/replicate transformed data.
Typically, this is done by applying a ETL step to the data in a data lake.

Data lakes and warehouses often fit together like:

[Raw data] -replicated-> [Data lake] -ETL-> [Data Warehouse]

**Databases**, like data warehouses and unlike data lakes, store structured data. Unlike data warehouses, they are optimized
for writes and often use record/row-based storage. Data is databases is typically live rather than populated from somewhere else.

### EL, ELT, and ETL

These are three methods to consider when moving data from a source into a target GCP system.
The correct method is determined by how much transformation is required to get the data into the desired state.
The methods below are listed from lesser to greater transformation required:

- EL - Extract and Load: Extract data from source and load data as-is into target system
- ELT - Extract, Load, and Transform: Extract data from source, load into target system, transform in the target system
- ETL - Extract, Transform, and Load: Extract data from source, transform data, load data into target system

In an ETL pipeline, it is important to:

- Maintain data lineage
- Keep metadata
- Data Catalog is a GCP product to help discover and manage metadata

### Others

Here are some others which I'm not going to discuss here:

- push vs. pull events
- 3 v's of data: variety, volume, velocity
- seperation of compute and storage

