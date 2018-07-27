---
title: Neo4j Graph View Editor
summary: "When being tired of writing Cypher queries for prototyping: A Neo4j browser extension for editing the graph's views graphically."

date: 2018-07-24
lastmod: 2018-07-24
draft: false

tags:
  - software
  - neo4j
  - graph


header:
  image: neo4j-editor/bg.png


markup: mmark
math: true
---

## It's a Graph!

A colleague and I were discussing the problem space of _Digital Health_ and it's embedding in information science.
We designed a multi-dimensional euclidean model addressing the people's roles on one axis, their general health state on the other, treatment on the next, etc.
Our goal was to provide a framework for the definition of any research project's location within the domain -- the project landscape.  
A few month later we met a medical doctor from whom we gained great insight into the real, non-academic version of the problem space we thought we'd already understand.
Long story short. It is rather a graph than a multi-dimensional euclidean space.
So we took a tool called Neo4j[^neo4j] and it's pretty neat browser to model such a graph.
While prototyping, we noticed that it's not feasible to write Cypher-queries for every small property change or node connection addition and deletion.
In general we wanted a user interface which allows rapid prototyping and easy model evolution.

## Why is this Publication related again?

Let me give you another example.
I recently discovered "Procedures for Performing Systematic Reviews"[^kitchenham] which describes a systematic literature review (SLR) as _"[...] a means of identifying, evaluating and interpreting all available research relevant to a particular research question, or topic area, or phenomenon of interest."_[^kitchenham]
Kitchenham suggests the generation of a _search strategy_ with respect to some well defined research questions following this rather general approach:

1. break down the question into individual facets
  - Population
  - Intervention
  - Outcomes
  - Study designs
2. draw up a list of
  - Synonyms
  - Abbreviations
  - alternative spellings
3. construct search strings using boolean _and_ and _or_

Besides, you should have study selection criteria splitting your research into included and excluded material. 

# STUFF

- Purpose
- Design/Methodology/Approach
- Findings
- Research Implications/Limitations
- Practical Implications
- Originality/Value

[^neo4j]: Neo4j Graph Platform, [neo4j.com](https://neo4j.com)
[^kitchenham]: Barbara Kitchenham. 2004. _Procedures for Performing Systematic Reviews_. Keele University.
