+++
date = "2022-04-19"
title = "GCP Serverless Compute Options Overview"
tags = ["Google Cloud", "Serverless", "Microservices", "Cloud Run", "Cloud Functions", "App Engine"]
categories = ["GCP Notes"]
+++

## Intro

This is a brief overview of the Serverless Compute Options in GCP.

After reading this post, I hope you are:

1. Familiar with the main options (at a high-level)
2. Understand some main use-cases for each option
3. Have a limited understanding of what it looks like to work with a service in each product

The google docs on these subjects are really helpful... I strongly recommend reading through them.

### Serverless Compute Options

Here are the primary compute options in GCP:

![Visual, Google Compute Options](https://raw.githubusercontent.com/priyankavergadia/GCPSketchnote/main/images/ComputeOptionsv1.jpg)

*[source](https://raw.githubusercontent.com/priyankavergadia/GCPSketchnote/main/images/ComputeOptionsv1.jpg)*

For this discussion, we'll focus on the three serverless options:

1. Cloud Run
2. App Engine
3. Cloud Functions


## Overview

Product | Docs | Description | Cool Features | Use-Cases
-- | -- | -- | -- | --
Cloud Run | [docs](https://cloud.google.com/run/) | Runs containerized apps | <ul><li>Split http traffic btw. diff versions of an app for A/B Tesing</li><li>Uses [knative](https://knative.dev/docs/), allowing portability</li><li>Can be triggered by events</li></ul> | <ul><li>Websites/APIs</li><li>Cronjobs</li></ul>
App Engine | [docs](https://cloud.google.com/appengine/) | Run http services | <ul><li>Split http traffic btw. diff versions of an app for A/B Tesing</li><li>Easy config. using [`app.yaml`](https://cloud.google.com/appengine/docs/standard/python3/config/appref)</li><li>Flexible [structure](https://cloud.google.com/appengine/docs/standard/python3/an-overview-of-app-engine) allowing services in different languages in the same app</li></ul> | <ul><li>Server-rendered websites/APIs</li></ul>
Cloud Functions | [docs](https://cloud.google.com/functions/) | Run event-driven functions | <ul><li>Uses [knative](https://knative.dev/docs/), allowing portability</li></ul> | 

