---
layout: first
title: research self-attention geometry
permalink: /research-trippy-cot/
author_profile: false
---

<style>
  :root{
    /* === text size knobs === */
    --text-size-desktop: 16px;        /* change me for desktop */
    --text-size-mobile: 15px;         /* change me for mobile */
    --text-size: var(--text-size-desktop);

    /* your existing knobs */
    --portrait-size: 200px;
    --portrait-size-mobile: 200px;
    --project-thumb-size: 80px;
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
    width: 100%; height: auto; object-fit: cover;
    border: 4px solid #4B0082; display: block; max-width: var(--portrait-size);
  }
  .text-col{ max-width: 640px; }

  /* ===== make the article text follow --text-size (even if inline font-size is set) ===== */
  .research{ font-size: var(--text-size); line-height: 1.65; }
  .research p{ font-size: var(--text-size) !important; line-height: 1.65; }
  .research li{ font-size: var(--text-size); }
  .news-wrap ul, .news-wrap li{ font-size: var(--text-size); }

  .about-text{ font-size: var(--text-size); line-height: 1.6; }

  .icons{ margin-top: 16px; }
  .icons a{ margin-right: 8px; display: inline-block; }
  .icons img{ width: 1.5em; height: 1.5em; }

  /* ===== News ===== */
  .news-wrap{ margin: 36px 0 32px; }
  .news-wrap h2{ margin: 0 0 10px 0; font-size: 22px; }
  .news-wrap .date{ font-weight: bold; white-space: nowrap; margin-right: 8px; }

  /* ===== Projects (if any on this page) ===== */
  .projects-wrap{ margin: 24px 0 70px; }
  .projects-wrap h2{ margin: 0 0 8px 0; font-size: 22px; }

  .projects-list{
    list-style: none; padding: 0; margin: 0;
    display: grid; row-gap: 12px;
  }

  .project-row{
    display: grid;
    grid-template-columns: var(--project-thumb-size) 1fr;
    column-gap: 12px;
    align-items: start;
    padding: 8px 4px; border-radius: 10px;
  }

  .project-thumb{ width: var(--project-thumb-size); height: auto; object-fit: cover; border: none; }
  .project-title{ font-weight: 700; margin: 0 0 2px 0; }
  .project-meta, .project-venue, .project-links{ font-size: var(--text-size); }
  .project-venue{ font-style: italic; margin: 0 0 6px 0; }
  .project-links a{} .project-links a + a::before{ content: " | "; margin: 0 6px; }

  /* ===== Results table: make it follow --text-size too (overrides later inline table CSS) ===== */
  .responsive-table{ font-size: var(--text-size) !important; }
  .responsive-table th, .responsive-table td{ font-size: var(--text-size) !important; }

  /* ===== Mobile ===== */
  @media (max-width: 760px){
    :root{ --text-size: var(--text-size-mobile); }  /* switch size on phones */

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

<div class="single-column">
  
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

<br><br>

<main class="container">
  <article class="research">

    <h1>Finetuning an LLM on trippy mathematical reasoning (with a couple of RTX 2080 cards)</h1>

    <hr class="center-hr">

    <!-- News -->
    <section class="news-box">
      <ul>
        <li>
          <strong>24.08.25</strong> — The first blog post about this project is out, more to come (hopefully) soon.
          <br>
          <a href="https://matteosaponati.github.io/posts/2025/08/trippy-cot-1/" target="_blank">blog post</a> ·
          <a href="https://github.com/matteosaponati/trippy-chain-of-thoughts" target="_blank">code</a>
        </li>
      </ul>
    </section>

    <hr class="center-hr">

  <div style="text-align: center;">
  <br>
  <strong>SUMMARY</strong>
  </div>
  <br>
  What happens when you teach language models to solve math problems through surreal, psychedelic reasoning that somehow still gets the right answer?
  <br>
  This is the first post in a series about the project. I started this journey not just for fun, but also as a way to teach myself, explore, and maybe discover something interesting along the way.
  <br>
  The experiment: Instead of boring step-by-step logic, I am training models to generate trippy, stream-of-consciousness rationales wrapped in custom tags like <trip_before> and <end>. 
  <br>
  The recipe needs three key ingredients: (1) A dataset of trippy answers to questions, (2) Supervised finetuning with parameter-efficient methods, and (3) Preference tuning with lightweight RL to enforce “trippy” thoughts.


<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>


