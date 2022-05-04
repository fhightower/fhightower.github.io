+++
date = "2022-04-27"
title = "Mapping GCP Products to Open-Source Systems"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Open Source"]
categories = ["GCP Notes"]
+++

## Intro

This is the first post in a series recording some notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

The plan is that each post will discuss a particular service, relevant to the GCP PDE cert.

## Disclaimer

Please read [this disclaimer](/posts/gcp-notes-disclaimer/).

## Mapping GCP Products to OSS

I find it helpful to map GCP Products to open-source software systems used by each GCP product.

Here's a table with my current understanding:

GCP Product | Open-Source System | Description
--- | --- | ---
BigTable | Hbase | 
CloudSQL | mysql/postgresql | CloudSQL provides managed instances of common databases 
Dataproc | Apache Hadoop/Spark | 
Cloud Storage | HDFS | A common use-case is to store HDFS (from DataProc or a Hadoop cluster running on a VM) in Cloud Storage
Dataflow | Apache Beam | 
Cloud Composer | Apache Airflow | 
Memorystore | Redis and Memcached | 
Firestore | MongoDB | Firestore is not API comptabile w/ MongoDB but is conceptually similar

