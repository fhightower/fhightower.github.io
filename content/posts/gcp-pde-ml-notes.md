+++
date = "2022-05-04"
title = "ML for the GCP PDE Exam"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Machine Learning"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post covers ML topics.

## Disclaimer

Please read [this disclaimer](/posts/gcp-notes-disclaimer/).

## Key Concepts

- L1 vs. L2 regression:
  - L1 estimates the *median* of the data using absolute value
    - Reduces low-value features
    - Robust to outliers
    - Good when only certain features contribute to success of model
  - L2 estimates the *mean* of the data to avoid overfitting
    - Not recommended for feature selection
    - Good when all features contribute relatively equally to the success of a model
- TensorFlow
  - Know how TensorFlow can be deployed (also, cost vs. value)
    - CPUs, GPUs, TPUs
- BQ ML
  - Understand the basic flow when using BQ ML:
- Vertex AI
  - Create computation graph and training app
  - Package app
  - Start Vertex AI job to run packaged app

