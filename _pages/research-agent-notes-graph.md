---
layout: first
title: agents notes table of contents
permalink: /research-agent-notes-graph/
author_profile: false
---

<style>
  :root{
    --text-size-desktop: 16px;
    --text-size-mobile: 15px;
    --text-size: var(--text-size-desktop);
  }

  .container{ max-width: 1000px; margin: 0 auto; padding: 0 90px; }
  .page-header{ padding-top: 18px; }
  .topbar{ display: flex; justify-content: flex-end; }
  .link-list{ list-style: none; display: flex; gap: 18px; margin: 0; padding: 0; }
  .research{ font-size: var(--text-size); line-height: 1.65; }
  .research p, .research li{ font-size: var(--text-size); line-height: 1.65; }
  .research code{ font-size: 0.92em; }

  .toc-wrap{
    border-top: 1px solid #ded9e3;
    border-bottom: 1px solid #ded9e3;
    margin: 24px 0 40px;
    padding: 18px 0 20px;
  }
  .graph-toc-wrap{
    border-top: 1px solid #ded9e3;
    border-bottom: 1px solid #ded9e3;
    margin: 24px 0 32px;
    padding: 18px 0 20px;
  }
  .toc-wrap h2,
  .graph-toc-wrap h2,
  .document-sections h2{
    margin: 0 0 12px;
    font-size: 23px;
    line-height: 1.3;
  }
  .graph-toc{
    width: 100%;
    min-height: 420px;
    display: block;
    background: transparent;
  }
  .graph-edge{
    stroke: #b8add0;
    stroke-width: 1.2;
  }
  .graph-node{
    cursor: pointer;
  }
  .graph-node circle{
    stroke: #fff;
    stroke-width: 1.6;
  }
  .graph-node text{
    font-size: 12px;
    fill: #241a2c;
    paint-order: stroke;
    stroke: #fff;
    stroke-width: 4px;
    stroke-linejoin: round;
  }
  .graph-node:hover circle{
    stroke: #17111d;
    stroke-width: 2.4;
  }
  .toc-list{
    margin: 0;
    padding-left: 22px;
  }
  .toc-list .toc-list{
    margin-top: 4px;
  }
  .toc-list li{
    margin: 4px 0;
  }
  .toc-list a{
    text-decoration: none;
  }
  .toc-list a:hover{
    text-decoration: underline;
  }
  .toc-loading{
    color: #5d5364;
    margin: 0;
  }

  .document-sections{
    margin: 36px 0 90px;
  }
  .doc-section{
    scroll-margin-top: 24px;
    border-top: 1px solid #ded9e3;
    padding: 19px 0 18px;
  }
  .doc-section h3{
    margin: 0 0 10px;
    font-size: 18px;
    line-height: 1.35;
  }
  .doc-section .markdown-body{
    color: #211829;
    font-size: var(--text-size);
    line-height: 1.65;
  }
  .doc-section .markdown-body:empty{ display: none; }
  .markdown-body p{ margin: 0 0 1em; }
  .markdown-body ul,
  .markdown-body ol{ margin: 0 0 1em 1.4em; padding-left: 1.1em; }
  .markdown-body li{ margin: 0.25em 0; }
  .markdown-body pre{
    overflow-x: auto;
    background: #f6f4f7;
    border: 1px solid #ded9e3;
    padding: 12px;
    line-height: 1.45;
    margin: 1em 0;
  }
  .markdown-body code{
    background: #f6f4f7;
    padding: 0.08em 0.25em;
  }
  .markdown-body pre code{
    background: transparent;
    padding: 0;
  }
  .markdown-body blockquote{
    margin: 1em 0;
    padding-left: 1em;
    border-left: 3px solid #ded9e3;
    color: #5d5364;
  }
  .markdown-body hr{
    border: 0;
    border-top: 1px solid #ded9e3;
    margin: 1.4em 0;
  }
  .doc-section.depth-1{ padding-left: 0; }
  .doc-section.depth-2{ padding-left: 24px; }
  .doc-section.depth-3{ padding-left: 48px; }
  .doc-section.depth-4,
  .doc-section.depth-5,
  .doc-section.depth-6{ padding-left: 72px; }
  .doc-section:target h3{
    color: #3a0a57;
  }

  @media (max-width: 760px){
    :root{ --text-size: var(--text-size-mobile); }
    .container{ padding: 0 16px; }
    .topbar{ justify-content: center; }
    .link-list{ gap: 12px; }
    .doc-section.depth-2{ padding-left: 14px; }
    .doc-section.depth-3,
    .doc-section.depth-4,
    .doc-section.depth-5,
    .doc-section.depth-6{ padding-left: 28px; }
  }
</style>

<div class="single-column">

<header class="page-header">
  <div class="container topbar">
    <nav style="font-size: 22px; margin-top: 1px;">
      <ul class="link-list">
        <li><a href="https://matteosaponati.github.io/">about</a></li>
        <li><a href="https://matteosaponati.github.io/year-archive/">blog</a></li>
        <li><a href="https://matteosaponati.github.io/music">music</a></li>
        <li><a href="/files/cv.pdf">cv</a></li>
      </ul>
    </nav>
  </div>
</header>

<main class="container">
  <div class="menu-divider" aria-hidden="true"></div>

  <article class="research">
    <h1>agents.md table of contents.</h1>

    <hr class="center-hr">

    <div style="text-align: center;">
      <br>
      <strong>SUMMARY</strong>
    </div>
    <br>

    This page renders <code>agents.md</code> as a standard clickable table of contents, followed by the copied section text.

    <hr style="width: 40%; margin: 20px auto;">

    <nav class="graph-toc-wrap" aria-label="Graph table of contents">
      <h2>graph contents</h2>
      <svg class="graph-toc" id="graph-toc" role="img" aria-label="Clickable graph table of contents"></svg>
    </nav>

    <nav class="toc-wrap" id="standard-toc" aria-label="Table of contents">
      <h2>contents</h2>
      <p class="toc-loading">Loading contents...</p>
    </nav>

    <section class="document-sections" id="document-sections" aria-label="Document sections">
      <h2>agents.md</h2>
    </section>
  </article>
</main>
</div>

<script>
(function(){
  var graphToc = document.getElementById("graph-toc");
  var toc = document.getElementById("standard-toc");
  var sectionContainer = document.getElementById("document-sections");
  if(!graphToc || !toc || !sectionContainer){ return; }

  fetch("{{ '/files/research/agent-notes-graph/graph.json' | relative_url }}", {cache: "no-cache"})
    .then(function(response){
      if(!response.ok){ throw new Error("Could not load table of contents data"); }
      return response.json();
    })
    .then(function(graph){
      renderGraphToc(graph);
      renderToc(graph);
      renderSections(graph);
    })
    .catch(function(error){
      toc.innerHTML = "";
      var heading = document.createElement("h2");
      heading.textContent = "contents";
      var message = document.createElement("p");
      message.className = "toc-loading";
      message.textContent = error.message;
      toc.appendChild(heading);
      toc.appendChild(message);
    });

  function sectionId(node){
    return "section-" + node.id;
  }

  function appendText(parent, tag, value){
    var el = document.createElement(tag);
    el.textContent = value;
    parent.appendChild(el);
    return el;
  }

  function buildChildren(edges){
    var children = {};
    edges.forEach(function(edge){
      if(edge.kind !== "contains"){ return; }
      if(!children[edge.source]){ children[edge.source] = []; }
      children[edge.source].push(edge.target);
    });
    return children;
  }

  function renderGraphToc(graph){
    var nodes = graph.nodes || [];
    var edges = (graph.edges || []).filter(function(edge){ return edge.kind === "contains"; });
    var nodeById = {};
    nodes.forEach(function(node){ nodeById[node.id] = node; });

    var visibleNodes = nodes.filter(function(node){
      return node.line && node.id !== "agents-md";
    }).sort(function(a, b){
      return Number(a.line || 0) - Number(b.line || 0);
    });
    var width = 900;
    var rowHeight = 36;
    var topPad = 28;
    var height = Math.max(420, topPad * 2 + visibleNodes.length * rowHeight);
    var levelXs = {0: 60, 1: 110, 2: 330, 3: 560, 4: 730, 5: 820, 6: 860};
    var palette = {
      structure: "#5F6FE7",
      practice: "#4B0082",
      workflow: "#2F80ED",
      research: "#6C4DFF"
    };

    graphToc.setAttribute("viewBox", "0 0 " + width + " " + height);
    graphToc.innerHTML = "";

    visibleNodes.forEach(function(node, index){
      var level = Number(node.level || 0);
      node._graphX = levelXs[level] || 850;
      node._graphY = topPad + index * rowHeight;
    });

    edges.forEach(function(edge){
      var source = nodeById[edge.source];
      var target = nodeById[edge.target];
      if(!source || !target || source._graphX === undefined || target._graphX === undefined){ return; }
      var line = document.createElementNS("http://www.w3.org/2000/svg", "line");
      line.setAttribute("x1", source._graphX);
      line.setAttribute("y1", source._graphY);
      line.setAttribute("x2", target._graphX);
      line.setAttribute("y2", target._graphY);
      line.setAttribute("class", "graph-edge");
      graphToc.appendChild(line);
    });

    visibleNodes.forEach(function(node){
      var group = document.createElementNS("http://www.w3.org/2000/svg", "g");
      var level = Number(node.level || 0);
      group.setAttribute("class", "graph-node");
      group.setAttribute("transform", "translate(" + node._graphX + "," + node._graphY + ")");
      group.setAttribute("tabindex", "0");
      group.setAttribute("role", "link");
      group.setAttribute("aria-label", node.label);

      var circle = document.createElementNS("http://www.w3.org/2000/svg", "circle");
      circle.setAttribute("r", level === 0 ? 8 : Math.max(5, 8 - level));
      circle.setAttribute("fill", palette[node.group] || "#5F6FE7");
      group.appendChild(circle);

      var label = document.createElementNS("http://www.w3.org/2000/svg", "text");
      label.setAttribute("x", 12);
      label.setAttribute("y", 4);
      label.textContent = node.label;
      group.appendChild(label);

      group.addEventListener("click", function(){
        window.location.hash = sectionId(node);
      });
      group.addEventListener("keydown", function(event){
        if(event.key === "Enter" || event.key === " "){
          event.preventDefault();
          window.location.hash = sectionId(node);
        }
      });
      graphToc.appendChild(group);
    });
  }

  function renderToc(graph){
    var nodes = graph.nodes || [];
    var edges = graph.edges || [];
    var nodeById = {};
    nodes.forEach(function(node){ nodeById[node.id] = node; });
    var children = buildChildren(edges);
    var root = nodeById["agents-md"] || nodes[0];

    toc.innerHTML = "";
    appendText(toc, "h2", "contents");
    if(!root){
      appendText(toc, "p", "No contents found.");
      return;
    }

    var rootList = document.createElement("ul");
    rootList.className = "toc-list";
    renderNodeList(root.id, rootList, children, nodeById);
    toc.appendChild(rootList);
  }

  function renderNodeList(parentId, list, children, nodeById){
    (children[parentId] || []).forEach(function(childId){
      var node = nodeById[childId];
      if(!node){ return; }
      var item = document.createElement("li");
      var link = document.createElement("a");
      link.href = "#" + sectionId(node);
      link.textContent = node.label;
      item.appendChild(link);

      var childIds = children[childId] || [];
      if(childIds.length){
        var childList = document.createElement("ul");
        childList.className = "toc-list";
        renderNodeList(childId, childList, children, nodeById);
        item.appendChild(childList);
      }
      list.appendChild(item);
    });
  }

  function renderSections(graph){
    var nodes = (graph.nodes || []).filter(function(node){
      return node.line && node.id !== "agents-md";
    }).sort(function(a, b){
      return Number(a.line || 0) - Number(b.line || 0);
    });
    sectionContainer.innerHTML = "";
    appendText(sectionContainer, "h2", graph.source || "agents.md");

    nodes.forEach(function(node){
      var section = document.createElement("section");
      section.className = "doc-section depth-" + Math.min(6, Math.max(1, Number(node.level || 1)));
      section.id = sectionId(node);
      appendText(section, "h3", node.label);
      var body = document.createElement("div");
      body.className = "markdown-body";
      body.innerHTML = node.body_html || "";
      section.appendChild(body);
      sectionContainer.appendChild(section);
    });
  }
})();
</script>
