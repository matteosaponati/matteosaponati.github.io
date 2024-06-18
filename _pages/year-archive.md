---
layout: first
permalink: /year-archive/
title: "blog"
author_profile: false
redirect_from:
  - /wordpress/blog-posts/
---

<style>
  /* Default styles for desktop */
  .wrapper {
    display: flex;
    flex-wrap: nowrap;
    align-items: flex-start;
    justify-content: space-between;
    margin: 5px;
  }
  .left-column {
    flex: 0 0 400px;
    padding: 40px;
  }
  .right-column {
    flex: 1 0 700px;
    padding: 20px;
    display: flex;
    flex-direction: column; /* Stack children vertically */
    /*align-items: flex-end; /* Align children to the right */
  }
  .right-column img {
    width: 100%;
    height: auto;
    object-fit: cover;
  }
  
  /* Mobile styles */
  @media (max-width: 600px) {
    .wrapper {
      flex-direction: column;
    }
    .left-column, .right-column {
      max-width: 100%;
      flex-basis: 100%;
    }
    .right-column img {
      width: 100%; /* Full width */
    }
    nav ul {
      text-align: center;
    }
    nav li {
      display: inline-block;
      margin-right: 10px; /* Adjust as needed */
    }
    footer {
      margin-top: 50px;
    }
  }
</style>


<div class="wrapper">
  <!-- Left column for navigation and about text -->
  <div class="left-column">
    <nav style="font-size: 30px; margin: 0;">
    <li><a href="https://matteosaponati.github.io/">matteosaponati</a></li></nav>
    <p style="margin-bottom:1cm;"></p>
    <nav style="font-size: 25px; margin-top: 20px;">
      <ul style="list-style: none; padding: 0;">
      <ul class="link-list">
        <li><a href="https://matteosaponati.github.io/research">research</a></li>
        <li><a href="https://matteosaponati.github.io/year-archive/">blog</a></li>
        <li><a href="https://matteosaponati.github.io/music">music</a></li>
        <li><a href="/files/cv.pdf">cv</a></li>
      </ul>
      </ul>
    </nav>
    <p style="margin-bottom:1cm;"></p>
    <a href="https://github.com/matteosaponati" target="_blank"><span style="display: inline-block; vertical-align: middle; margin-left: 8px;"><img src="/images/general/github_icon.png" alt="Icon" style="width: 1.5em; height: 1.5em;"></span></a>
    <a href="https://scholar.google.com/citations?user=kF4valcAAAAJ" target="_blank"><span style="display: inline-block; vertical-align: middle; margin-left: 8px;"><img src="/images/general/scholar_icon_circle.png" alt="Icon" style="width: 1.5em; height: 1.5em;"></span></a>
    <a href="https://www.linkedin.com/in/matteosaponati/" target="_blank"><span style="display: inline-block; vertical-align: middle; margin-left: 8px;"><img src="/images/general/linkedin_icon.png" alt="Icon" style="width: 1.5em; height: 1.5em;"></span></a>  
    <a href="https://twitter.com/matteosaponati" target="_blank"><span style="display: inline-block; vertical-align: middle; margin-left: 8px;"><img src="/images/general/x_icon.png" alt="Icon" style="width: 1.5em; height: 1.5em;"></span></a>
    <a href="https://www.instagram.com/matteosaponati/" target="_blank"><span style="display: inline-block; vertical-align: middle; margin-left: 8px;"><img src="/images/general/instagram_icon.png" alt="Icon" style="width: 1.5em; height: 1.5em;"></span></a>  
  
  </div>
  <!-- Right column for the featured image -->
  <div class="right-column">
  <div style="flex: 1; padding: 20px; position: relative;">
    <div style="text-align: right; padding-bottom: 10px;">

  </div>
  </div>

{% capture written_year %}'None'{% endcapture %}
{% for post in site.posts %}
  {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
  {% if year != written_year %}
    <h2 id="{{ year | slugify }}" class="archive__subtitle">{{ year }}</h2>
    {% capture written_year %}{{ year }}{% endcapture %}
  {% endif %}
  {% include archive-single.html %}
{% endfor %}