---
title: Neo4j Graph View Editor
description: "When being tired of writing Cypher queries for prototyping: A Neo4j browser extension for editing the graph's views graphically."

published: 2018-07-27
cover: bg.png

images:
  - bg.png
  - toolbar.png

tags:
  - extension
  - neo4j

categories:
  - Open Source Projects

aliases: 
  - /post/neo4j-editor/
  - /posts/neo4j-graph-view-editor-englisch/

---

## TL;DR

The Neo4j[^neo4j] Browser[^neo4j-browser] is a great tool for querying a graph and comes with a well designed user interface that supports data visualization and iterative exploration.
But in terms of manipulation, the user has to write Cypher[^cypher]-queries, respectively knowing the language in detail.
I forked the GitHub-Project[^neo4j-editor-github] and extended the user interface for the sake of visual data manipulation.
This allow rapid model prototyping and evolution without querying the graph with Cypher.
A drawback is the inconsistency between multiple visualizations because of a missing synchonization mechanism.
Assuming a running Neo4j instance, run the Docker container[^run-docker-container] and give it a try.

## It's a Graph!

A colleague and I were discussing the problem space of _Digital Health_ and it's embedding in information science.
We designed a multi-dimensional euclidean model addressing the people's roles on one axis, their general health state on the other, treatment on the next, etc.
Our goal was to provide a framework for the definition of any research project's location within the domain -- the project landscape.
A few month later we met a medical doctor from whom we gained great insight into the real, non-academic version of the problem space we thought we'd already understand.
Long story short. It is rather a graph than a multi-dimensional euclidean space.
So we took a tool called Neo4j and it's pretty neat browser to model such a graph.
While prototyping, we noticed that it's not feasible to write Cypher-queries for every small property change or node connection addition and deletion.
In general we wanted a user interface which allows rapid prototyping and easy model evolution.

## Hacking a Browser

Neo4j allows us to contribute and improve the software by its very own open source nature.
I checked out the source and found a complex looking React[^react] Javascript application.
You can argue as much as you want; I don't think markup, stylesheets and business logic should go into one file.
Don't get me the wrong way, as a software engineer, I love the idea of "everything is a component".
But why should I forsake a well established, thousand-times-proven software engineering approach and melt down those carefully separated aspects into one single file?
Maybe it's part of the modern Javascript movement where it's desirable to get as much dependencies to proprietary transpilers and outdated software libraries as you can.
Anyway, I'm getting a little off-topic here. :wink:

If you execute a Cypher query with the browser, you'll get a visualization frame.
There's a bar on top of the visualization itself, giving you all the labels and relationship types that have been found and their cardinality.
Below the visualization is the inspector.
When selecting a node, it's labels and properties are shown.
Select a relationship and you'll see it's type and properties.

{{< figure src="toolbar.png" caption="Introduced toolbar and additional inspector buttons" >}}

### Manipulating Nodes & Relationships

As you can see in the image above, I added a tree button toolbar to the bottom left, right above the inspector.
They're all working depending on the context, i.e. the selection you've taken within the visualization.
The first one deletes either a node or a relationship, depending on what's currently selected.
Depicted as a closed chain, the second one will lead into a relationship creation mode.
For this to work, you should select a node, go into the aforementioned mode and click the target of the new connection.
The last one works when nothing's selected and creates a new node.  
New nodes will have a label named `Unlabeled` and new relationships will be `untyped`.
But don't worry, you'll have the option to refine both.
I decided to assign a default label and type to identify unrefined nodes and relationships for keeping the model clean and concise.
You may query your model for those, thus checking it's integrity.

```cypher
MATCH (a:Unlabeled)
MATCH (b)-[:untyped]-(c)
RETURN a, b, c;
```

### Labels & Types

If you create a node or a relationship, there'll be a default label or type.
You should alter those to match the domain you're modeling.
When you click on a node's label, it will be deleted.
Clicking on the plus sign right behind the labels section within the inspector, you'll get a dialog asking for a new label.
Nearly the same interaction holds for relationship types.
But in contrast to node labels, a relationship has exactly one type and can therefore not be deleted.

### Properties

A click on a property's name will will delete the property.
If you intent to change a property, just click on it's value.
New properties can be created with the plus button behind the list of existing ones.
The last two actions will open a dialog with key and value text input.

## Alternatives

All the implementation work may seem redundant when you search for Neo4j graph editing tools.
Just go to the Neo4j data visualization guide[^neo4j-vis-guide] and check some of them out.
They all seem appropriate, but have at least one of the following drawbacks.
Either you write most of the user interface and it's connection to the database yourself, or you pay a company to get a proprietary product.
One open source project currently in development may replace the Neo4j browser in the future or give us graph editing functionality at least[^neo4j-js].

The originality given by this implementation lies in it's open source character extending work that has already been done pretty well by the guys that build this graph database and browser.
A problem is the missing synchronization mechanism for multiple visualization frames, but for my projects, this isn't an issue.

## And now?

Go run the Docker container[^run-docker-container] and try my editor.
You can contribute to this project at GitHub[^neo4j-editor-github] as well.


[^neo4j]: Neo4j graph platform, [neo4j.com](https://neo4j.com)
[^neo4j-browser]: Neo4j browser, [neo4j.com/developer/guide-neo4j-browser](https://neo4j.com/developer/guide-neo4j-browser/)
[^cypher]: Cypher query language, [neo4j.com/developer/cypher](https://neo4j.com/developer/cypher/)
[^neo4j-editor-github]: Forked GitHub-Project of the Neo4j browser [github.com/phdd/neo4j-browser](https://github.com/phdd/neo4j-browser)
[^run-docker-container]: `docker run --name neo4j-editor -d -p 8080:80 phdd/neo4j-browser`
[^react]: React Javascript framework, [reactjs.org](https://reactjs.org/)
[^neo4j-vis-guide]: Neo4j data visualization guide, [neo4j.com/developer/guide-data-visualization](https://neo4j.com/developer/guide-data-visualization/)
[^neo4j-js]: A Neo4j graph editor written in Javascript, [github.com/adadgio/neo4j-js](https://github.com/adadgio/neo4j-js)
