---
layout: first
title: music
permalink: /music/
author_profile: false
---

<style>
  /* ===== knobs ===== */
  :root{
    /* Change this to resize the music image quickly */
    --music-img-max: 420px; /* e.g., 360px, 500px */
  }

  /* ===== shared centered container + header menu (same as About) ===== */
  .container { max-width: 1000px; margin: 0 auto; padding: 0 90px; }
  .page-header { padding-top: 18px; }
  .topbar { display: flex; justify-content: flex-end; }
  .link-list { list-style: none; display: flex; gap: 18px; margin: 0; padding: 0; }

  /* ===== page body ===== */
  .music-body{
    margin: 40px 0 60px;
    display: flex;
    flex-direction: column;
    align-items: center;     /* center the block */
    text-align: center;
  }
  .music-body p{
    font-size: 18px;
    margin: 2px 0 18px;
  }
  .music-image{
    width: 100%;
    max-width: var(--music-img-max);
    height: auto;
    object-fit: cover;
    border: 4px solid #4B0082; /* keep accent color */
  }

  /* mobile */
  @media (max-width: 760px){
    .container { padding: 0 16px; }
  }
</style>

<header class="page-header">
  <div class="container topbar">
    <!-- keep your exact menu styling, aligned right within gutters -->
    <nav style="font-size: 25px; margin-top: 1px;">
      <ul class="link-list">
        <li><a href="https://matteosaponati.github.io/research">research</a></li>
        <li><a href="https://matteosaponati.github.io/year-archive/">blog</a></li>
        <li><a href="https://matteosaponati.github.io/music">music</a></li>
        <li><a href="/files/cv.pdf">cv</a></li>
      </ul>
    </nav>
  </div>
</header>

<main class="container">
  <section class="music-body">
    <p>soon.</p>
  </section>
</main>
