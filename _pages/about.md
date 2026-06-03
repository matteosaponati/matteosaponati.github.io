---
layout: first
permalink: /
title: "about"
excerpt: "about"
author_profile: false
last_modified_at: 2026-05-18
redirect_from: 
  - /about/
  - /about.html
---

<style>
  :root{
    /* Quick knobs */
    --portrait-size: 180px;            /* desktop/tablet size */
    --portrait-size-mobile: 180px;     /* mobile image size */
    --project-thumb-size: 80px;        /* project icon size */
    --text-size: 16px;                 /* standard body text size (was 18px) */
    --accent-color: #3a0a57;

  }

  /* ===== centered container & header ===== */
  .container { max-width: 1000px; margin: 0 auto; padding: 0 90px; }
  .page-header { padding-top: 18px; }
  .topbar { display: flex; justify-content: flex-end; }
  .link-list { list-style: none; display: flex; gap: 18px; margin: 0; padding: 0; }
  .link-list a{ color: var(--accent-color); }

  /* ===== two-column about block ===== */
  .about-grid{
    display: grid;
    grid-template-columns: var(--portrait-size) minmax(300px, 420px);
    grid-template-areas: "image text";
    column-gap: 0;
    justify-content: space-between;
    align-items: start;
    margin-top: 0;
  }
  .image-col{
    grid-area: image;
    display: flex;
    justify-content: flex-start;
    align-items: flex-start;
  }
  .portrait{
    width: var(--portrait-size);
    height: var(--portrait-size);
    object-fit: cover;
    border: 3px solid #000;
    display: block;
    max-width: var(--portrait-size);
    border-radius: 50%;
  }
  .text-col{ grid-area: text; max-width: 420px; }
  .about-text{ font-size: var(--text-size); line-height: 1.6; }
  .about-text h2{ margin-top: 0; }
  .icons{
    display: flex;
    justify-content: center;
    gap: 10px;
    width: 100%;
    margin: 56px auto 0;
  }
  .icons a{ display: inline-block; }
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
  .projects-wrap{
    margin: 36px 0 70px;
  }
  .projects-wrap h2{
    display: inline-block;
    margin: 0;
    font-size: 22px;
  }

  .projects-list{
    list-style: none;
    padding: 18px 0 4px 52px;
    margin: 14px 0 0 0;
    display: grid;
    row-gap: 24px;
    position: relative;
    max-width: 100%;
  }

  .projects-list::before{
    content: "";
    position: absolute;
    top: -6px;
    bottom: 0;
    left: 18px;
    width: 4px;
    background: var(--accent-color);
    opacity: .3;
  }

  .project-row{
    --project-title-midline: calc(15.6px + 4px + 0.7em);
    position: relative;
    display: flex;
    align-items: flex-start;
    min-height: 32px;
    padding: 0;
  }

  .project-row::before{
    content: "";
    position: absolute;
    left: -39px;
    top: calc(var(--project-title-midline) - 7px);
    width: 14px;
    height: 14px;
    border-radius: 50%;
    background: var(--accent-color);
  }

  .project-entry{
    position: relative;
    display: grid;
    row-gap: 4px;
    padding-left: 6px;
  }

  .project-date{
    font-size: 13px;
    line-height: 1.2;
    color: #7a8288;
  }

  /* title link without underline */
  .project-title{ font-weight: 500; margin: 0; font-size: var(--text-size); line-height: 1.4; }
  .project-title a{ text-decoration: none; }
  .project-title a:hover{ text-decoration: none; }

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
      grid-template-areas:
        "image"
        "text";
      row-gap: 18px;
      margin-top: 0;
    }
    .image-col{ justify-content: center; }
    .text-col{ max-width: none; }
    .portrait{
      width: var(--portrait-size-mobile);
      height: var(--portrait-size-mobile);
      max-width: var(--portrait-size-mobile);
    }
    .projects-list{ max-width: none; }
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
  <div class="menu-divider" aria-hidden="true"></div>

  <!-- About -->
  <section class="about-grid">
    <aside class="image-col">
      <img class="portrait" src="images/about/me-swiss.png" alt="Portrait of Matteo Saponati">
    </aside>
    <div class="text-col">
      <div class="about-text">
        <h2>hi, I am Matteo.</h2>
        I am a research scientist. 
        <br><br>
        I am fascinated by life and intelligence. Most importantly, I am a human being going through this life with the help of human connections and open communication.
        <!-- <br><br> -->
        <!-- I usually experiment and <a href="https://icml.cc/virtual/2025/poster/44452" target="_blank">do stuff with LLMs</a>. I also work with <a href="https://ieeexplore.ieee.org/abstract/document/11065428" target="_blank">"efficient and exotic hardware"</a> that implement neural computations with analog circuits. I have a PhD in Neuroinformatics with a <a href="https://repository.ubn.ru.nl/handle/2066/297621" target="_blank">thesis</a> on synaptic plasticity and predictive processes in biological and artificial networks.  -->
      </div>
    </div>
  </section>

  <div class="icons" aria-label="Social links">
    <a href="https://github.com/matteosaponati" target="_blank"><img src="/images/general/github_icon.png" alt="GitHub"></a>
    <a href="https://scholar.google.com/citations?user=kF4valcAAAAJ" target="_blank"><img src="/images/general/scholar_icon_circle.png" alt="Google Scholar"></a>
    <a href="https://www.linkedin.com/in/matteosaponati/" target="_blank"><img src="/images/general/linkedin_icon.png" alt="LinkedIn"></a>
    <a href="https://twitter.com/matteosaponati" target="_blank"><img src="/images/general/x_icon.png" alt="X/Twitter"></a>
    <a href="https://www.instagram.com/matteosaponati/" target="_blank"><img src="/images/general/instagram_icon.png" alt="Instagram"></a>
  </div>

  <!-- Projects -->
  <section class="projects-wrap">
    <h2>projects.</h2>
    <ul class="projects-list">

    <li class="project-row">
        <div class="project-entry">
          <time class="project-date" datetime="2026-06">Jun 2026</time>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/research-predictive-law-OPSD">
              <b>paper accepted at ICML 2026 (RLxF workshop) ✨ <br> "A Predictive Law for On-Policy
            Self-Distillation From World Feedback".</b>
            </a>
          </div>
        </div>
      </li>

    <li class="project-row">
        <div class="project-entry">
          <time class="project-date" datetime="2026-05">May 2026</time>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/research-loops/">
              <b>research loops and self-improvement.</b>
            </a>
          </div>
        </div>
      </li>

      <li class="project-row">
        <div class="project-entry">
          <time class="project-date" datetime="2026-04">Apr 2026</time>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/synth-pretrain-very-small-reasoning-models/">
              <b>building a cognitive core 1: synthetic pretraining.</b>
            </a>
          </div>
        </div>
      </li>

      <li class="project-row">
        <div class="project-entry">
          <time class="project-date" datetime="2026-02">Feb 2026</time>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/research-adversarial-robustness">
              <b>paper accepted at CVPR 2026 ✨ <br> "A combination of noise and bilateral filters achieve supralinear and scalable adversarial robustness in CNNs".</b>
            </a>
          </div>
        </div>
      </li>

      <li class="project-row">
        <div class="project-entry">
          <time class="project-date" datetime="2026-01">Jan 2026</time>
          <div class="project-title">
            <a href="https://matteosaponati.github.io//research-feedback-control-1/">
              <b>paper accepted at ISCAS 2026 (oral) ✨ <br> "Mixed-signal implementation of feedback-control optimizer for single-layer Spiking Neural Networks".</b>
            </a>
          </div>
        </div>
      </li>

      <li class="project-row">
        <div class="project-entry">
          <time class="project-date" datetime="2025-08">Aug 2025</time>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/research-trippy-cot/">
              <b>finetuning Qwen2.5-7B on trippy mathematical reasoning.</b>
            </a>
          </div>
        </div>
      </li>

      <li class="project-row">
        <div class="project-entry">
          <time class="project-date" datetime="2025-05">May 2025</time>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/research-self-attention-geometry">
              <b>paper accepted at ICML 2025 ✨ <br> "The underlying structures of self-attention: symmetry, directionality, and emergent dynamics in Transformer training".</b>
            </a>
          </div>
        </div>
      </li>

      <li class="project-row">
        <div class="project-entry">
          <time class="project-date" datetime="2024-03">Mar 2024</time>
          <div class="project-title">
            <a href="https://matteosaponati.github.io/research-feedback-control"><b>programming mixed-signal devices on-chip with feedback control.</b></a>
          </div>
        </div>
      </li>

    </ul>
    <br><br>
    <div class="projects-updated">
      last update: {{ page.last_modified_at | date: "%d %b %Y" }}
    </div>
  </section>
</main>
