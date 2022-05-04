+++
date = "2022-04-29"
title = "Bigtable in a Nutshell"
tags = ["Google Cloud", "Professional Data Engineer Certfication", "Bigtable", "No-SQL", "Database"]
categories = ["GCP Notes"]
+++

## Intro

This post is part of a series of posts with notes as I'm studying for [Google's Professional Data Engineer Certification](https://cloud.google.com/certification/data-engineer).

This particular post covers Bigtable in a nutshell.

## Disclaimer

Please read [this disclaimer](/posts/gcp-notes-disclaimer/).

## Bigtable

- h-base compliant
- Requires configuration and management of nodes
- Designing/choosing a good row-key (index) is *critical* to avoiding hot-spots (where some nodes have significantly more to process than others)
  - Rows are sorted lexigraphically by row-key
  - Generally a long, compound key (e.g. `{id}#{source}#{timestamp}`)
  - Order of a compound key matters!
  - [Principles](https://cloud.google.com/bigtable/docs/schema-design):
    - Don't put timestamps first
    - Don't hash values (keep values human-readable as row-keys are lexigraphically sorted)
    - Pad integers (and sometimes timestamps) so all row keys will be the same length and be reasonably sorted lexigraphically
- Supports [column families](https://cloud.google.com/bigtable/docs/schema-design#column-families)

