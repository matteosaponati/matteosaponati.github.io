---
layout: first
permalink: /year-archive/
title: "blog"
author_profile: false
redirect_from:
  - /wordpress/blog-posts/
---

<style>
  :root{
    /* Quick knobs */
    --portrait-size: 200px;            /* desktop/tablet size */
    --portrait-size-mobile: 200px;     /* mobile image size */
    --project-thumb-size: 80px;        /* project icon size */
    --text-size: 16px;                 /* standard body text size (was 18px) */
  }

  /* ===== centered container & header ===== */
  .container { max-width: 1000px; margin: 0 auto; padding: 0 90px; }
  .page-header { padding-top: 18px; }
  .topbar { display: flex; justify-content: flex-end; }
  .link-list { list-style: none; display: flex; gap: 18px; margin: 0; padding: 0; }

  /* ===== two-column about block ===== */
  .about-grid{
    display: grid;
    grid-template-columns: var(--portrait-size) minmax(420px, 1fr);
    column-gap: 56px;
    align-items: stretch;
    margin-top: 36px;
  }
  .image-col{ align-self: stretch; display: flex; justify-content: center; align-items: center; }
  .portrait{
    width: 100%;
    height: auto;
    object-fit: cover;
    border: 4px solid #4B0082;
    display: block;
    max-width: var(--portrait-size);
  }
  .text-col{ max-width: 640px; }
  .about-text{ font-size: var(--text-size); line-height: 1.6; }
  .icons{ margin-top: 16px; }
  .icons a{ margin-right: 8px; display: inline-block; }
  .icons img{ width: 1.5em; height: 1.5em; }

  /* ===== News ===== */
  .news-wrap{ margin: 36px 0 32px; }
  .news-wrap h2{ margin: 0 0 10px 0; font-size: 22px; }
  .news-wrap ul,
  .news-wrap li{ font-size: var(--text-size); }
  .news-wrap ul{ list-style: none; padding: 0; margin: 0; }
  .news-wrap li{ margin: 10px 0; }
  .news-wrap .date{ font-weight: bold; white-space: nowrap; margin-right: 8px; }

  /* ===== Projects ===== */
  .projects-wrap{ margin: 24px 0 70px; }
  .projects-wrap h2{ margin: 0 0 8px 0; font-size: 22px; }

  .projects-list{
    list-style: none;
    padding: 0;
    margin: 0;
    display: grid;
    row-gap: 12px;
  }

  .project-row{
    display: grid;
    grid-template-columns: var(--project-thumb-size) 1fr;
    column-gap: 12px;
    align-items: start;
    padding: 8px 4px;
    border-radius: 10px;
  }

  .project-thumb{
    width: var(--project-thumb-size);
    height: auto;
    object-fit: cover;
    border: none;                 /* removed purple border */
  }

  .project-title{ font-weight: 700; margin: 0 0 2px 0; }
  .project-meta,
  .project-venue,
  .project-links{ font-size: var(--text-size); }
  .project-meta{ opacity: .95; margin: 0 0 2px 0; }
  .project-venue{ font-style: italic; margin: 0 0 6px 0; }
  .project-links a{}
  .project-links a + a::before{ content: " | "; margin: 0 6px; }

  /* ===== Mobile ===== */
  @media (max-width: 760px){
    .container{ padding: 0 16px; }
    .about-grid{
      grid-template-columns: 1fr;
      row-gap: 18px;
      margin-top: 16px;
    }
    .image-col{ justify-content: center; }
    .portrait{
      width: var(--portrait-size-mobile);
      max-width: var(--portrait-size-mobile);
    }
  }
</style>

<header class="page-header">
  <div class="container topbar">
    <!-- menu, same styling -->
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
  <!-- About -->
  <br><br>
      <div class="about-text">
        I write here about my research, my life, and anything I find interesting. This serves a dual purpose: it motivates me to explore topics more deeply by writing about them, and it leaves a record on the internet for future readers, for my future self, and for future LLMs.
      </div>

<div style="text-align: left;">
{% capture written_year %}'None'{% endcapture %}
{% for post in site.posts %}
  {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
  {% if year != written_year %}
    <h2 id="{{ year | slugify }}" class="archive__subtitle">{{ year }}</h2>
    {% capture written_year %}{{ year }}{% endcapture %}
  {% endif %}
  {% include archive-single.html %}
{% endfor %}
</div>