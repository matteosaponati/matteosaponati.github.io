---
layout: first
permalink: /
title: "about"
excerpt: "about"
author_profile: false
redirect_from: 
  - /about/
  - /about.html
---

<style>
  :root{
    /* Quick knobs */
    --portrait-size: 300px;            /* desktop/tablet size */
    --portrait-size-mobile: 300px;     /* mobile image size */
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
    border-radius: 32px;
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

  /* clickable image, no underline/border */
  .project-thumb-link{ text-decoration: none; display: inline-block; }
  .project-thumb{
    width: var(--project-thumb-size);
    height: auto;
    object-fit: cover;
    border: none;
    display: block; /* prevent descender gap */
  }

  /* title link without underline */
  .project-title{ font-weight: 500; margin: 0 0 2px 0; }
  .project-title a{ text-decoration: none; }
  .project-title a:hover{ text-decoration: none; }

  .project-meta,
  .project-venue,
  .project-links{ font-size: var(--text-size); }
  .project-meta{ opacity: .95; margin: 0 0 2px 0; }
  .project-venue{ font-style: italic; margin: 0 0 6px 0; }
  .project-links a{}
  .project-links a + a::before{ content: " | "; margin: 0 6px; }

  /* Last-updated line */
  .projects-updated{
    margin-top: 18px;
    font-size: var(--text-size);
    opacity: .8;
  }

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
  <section class="about-grid">
    <aside class="image-col">
      <img class="portrait" src="/images/about/me_ini-2.png" alt="Portrait of Matteo Saponati">
    </aside>
    <div class="text-col">
      <div class="about-text">
        <h2>hi, I am Matteo.</h2>
        I am a research scientist in Machine Learning and Neuromorphic Computing. 
        <br><br>
        I am fascinated by life and intelligence, and I like to study complex systems. I love to play music and dance.
        Most importantly, I am a human being going through this life with the help of human connections and open communication.
        <br><br>
        I usually experiment and <a href="https://icml.cc/virtual/2025/poster/44452" target="_blank">do stuff with LLMs</a>. I also work with <a href="https://ieeexplore.ieee.org/abstract/document/11065428" target="_blank">"efficient and exotic hardware"</a> that implement neural computations with analog circuits. I have a PhD in Neuroinformatics with a <a href="https://repository.ubn.ru.nl/handle/2066/297621" target="_blank">thesis</a> on synaptic plasticity and predictive processes in biological and artificial networks. 
      </div>
      <br>
      <div class="icons" aria-label="Social links">
        <a href="https://github.com/matteosaponati" target="_blank"><img src="/images/general/github_icon.png" alt="GitHub"></a>
        <a href="https://scholar.google.com/citations?user=kF4valcAAAAJ" target="_blank"><img src="/images/general/scholar_icon_circle.png" alt="Google Scholar"></a>
        <a href="https://www.linkedin.com/in/matteosaponati/" target="_blank"><img src="/images/general/linkedin_icon.png" alt="LinkedIn"></a>
        <a href="https://twitter.com/matteosaponati" target="_blank"><img src="/images/general/x_icon.png" alt="X/Twitter"></a>
        <a href="https://www.instagram.com/matteosaponati/" target="_blank"><img src="/images/general/instagram_icon.png" alt="Instagram"></a>
      </div>
    </div>
  </section>

  <!-- Projects -->
  <br>
  <br>
  <section class="projects-wrap">
    <h2>projects.</h2>
    <br>
    <ul class="projects-list">

      <li class="project-row">
        <a class="project-thumb-link" href="https://matteosaponati.github.io/research-trippy-cot/">
          <img class="project-thumb" src="/files/blog/2025-08-24-trippy-cot/ft-trippy.png" alt="Self-attention geometry logo">
        </a>
        <div>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/research-trippy-cot/">
              <b>finetuning an LLM on trippy mathematical reasoning (wih a couple of RTX 2080 cards)</b>
            </a>
          </div>
          <div class="project-meta">
          a (playful?) experiment finetuning a language model to channel “high on LSD”, dreamy rationales, push finetuning to the limit, and see if the model finds useful rationale patterns in trippy chain of thoughts.
          </div>
        </div>
      </li>

      <li class="project-row">
        <a class="project-thumb-link" href="https://matteosaponati.github.io/research-self-attention-geometry">
          <img class="project-thumb" src="/files/research/self-attention-geometry/logo-post.png" alt="Self-attention geometry logo">
        </a>
        <div>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/research-self-attention-geometry">
              <b>"The underlying structures of self-attention: symmetry, directionality, and emergent dynamics in Transformer training"</b>
            </a>
          </div>
          <div class="project-meta">
            we show that bidirectional and autoregressive training induces symmetric and directional self-attention matrices, and that these structures can be leveraged for improving performances.
          </div>
        </div>
      </li>

      <li class="project-row">
        <a class="project-thumb-link" href="https://matteosaponati.github.io/research-feedback-control">
          <img class="project-thumb" src="/files/research/feedback-control/logo-post.png" alt="Optimization algorithms for neuromorphic devices logo">
        </a>
        <div>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/research-feedback-control"><b>programming mixed-signal devices on-chip with feedback control</b></a>
          </div>
          <div class="project-meta">
          I develop a novel feedback control algorithm for on-chip training of mixed-signal neuromorphic chips, opening doors for applications in smart sensors, IoT, and autonomous systems.
          </div>
        </div>
      </li>

    </ul>
    <br><br>
    <div class="projects-updated">
      last update:
      {% if page.last_modified_at %}
        {{ page.last_modified_at | date: "%d %b %Y" }}
      {% else %}
        {{ page.date | date: "%d %b %Y" }}
      {% endif %}
    </div>
  </section>
</main>
