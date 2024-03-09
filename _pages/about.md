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
  /* Default styles for desktop */
  .wrapper {
    display: flex;
    flex-wrap: wrap;
    align-items: flex-start;
    justify-content: space-between;
  }
  .left-column {
    flex: 1;
    max-width: 400px;
    padding: 2px;
  }
  .right-column {
    flex: 2;
    padding: 2px;
  }
  .right-column img {
    width: 70%;
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

<div class="wrapper">
  <!-- Left column for navigation and about text -->
  <div class="left-column">
    <h1 style="font-size: 30px; margin: 0;">matteosaponati</h1>
    <nav style="font-size: 20px; margin-top: 20px;">
      <ul style="list-style: none; padding: 0;">
      <ul class="link-list">
        <li><a href="https://matteosaponati.github.io/research">research</a></li>
        <li><a href="https://matteosaponati.github.io/year-archive/">blog</a></li>
        <li><a href="https://matteosaponati.github.io/music">music</a></li>
        <li><a href="/files/cv.pdf">cv</a></li>
      </ul>
      </ul>
    </nav>
    <p style="font-size: 12px; margin-top: 20px;">
      hey there - this is my personal website, here you can find my research work, my scientific publications, my music, and other things. 
      <br><br>
      I am a researcher, mainly working with models in Neuroscience and Machine Learning. I am also a musician, I make my own music, and I love to hang out with other musicians and take part in random jam sessions - it makes me feel alive. 
      <br><br>
      Originally from Italy, I have a very strong emotional connection with the sea, the smell of "salmastro", and carnival.
    </p>

  </div>
  <!-- Right column for the featured image -->
  <div class="right-column">

  <div style="flex: 2; padding: 20px; position: relative;">
    <div style="position: absolute; top: 0; right: 0; padding: 20px;">
  <a href="https://github.com/matteosaponati" target="_blank"><span style="display: inline-block; vertical-align: middle; margin-left: 8px;"><img src="/images/general/github_icon.png" alt="Icon" style="width: 1em; height: 1em;"></span></a>
  <a href="https://twitter.com/matteosaponati" target="_blank"><span style="display: inline-block; vertical-align: middle; margin-left: 8px;"><img src="/images/general/x_icon.png" alt="Icon" style="width: 1em; height: 1em;"></span></a>
  <a href="https://www.instagram.com/matteosaponati/" target="_blank"><span style="display: inline-block; vertical-align: middle; margin-left: 8px;"><img src="/images/general/instagram_icon.png" alt="Icon" style="width: 1em; height: 1em;"></span></a>  

  </div>
  <img src="/images/about/me_garfagnana.png" alt="Featured" style="width: 70%; height: auto; object-fit: cover;">
  
  </div>
</div>

<footer style="text-align: center;">
   <h1 style="font-size: 30px; margin: 0;"> 
   © 2024 matteosaponati - based on <a href="https://github.com/academicpages/academicpages.github.io">academic pages</a></h1>
</footer>

<!--
<div style="display: flex; flex-wrap: wrap; align-items: flex-start; justify-content: space-between;">
  <div style="flex: 1; max-width: 400px; padding: 20px;">
    <h1 style="font-size: 30px; margin: 0;">matteosaponati</h1>
    <nav style="font-size: 20px; margin-top: 20px;">
      <ul style="list-style: none; padding: 0;">
      <ul class="link-list">
        <li><a href="https://matteosaponati.github.io/research">research</a></li>
        <li><a href="https://matteosaponati.github.io/year-archive/">blog</a></li>
        <li><a href="https://matteosaponati.github.io/music">music</a></li>
        <li><a href="/files/cv.pdf">cv</a></li>
      </ul>
      </ul>
    </nav>
    <p style="font-size: 12px; margin-top: 20px;">
      hey there - this is my personal website, here you can find my research work, my scientific publications, my music, and other things. 
      <br><br>
      I am a researcher, mainly working with models in Neuroscience and Machine Learning. I am also a musician, I make my own music, and I love to hang out with other musicians and take part in random jam sessions - it makes me feel alive. 
      <br><br>
      Originally from Italy, I have a very strong emotional connection with the sea, the smell of "salmastro", and carnival.
    </p>
    <div style="text-align: center; margin-top: 50px;">
    </div>
  </div>
  <div style="flex: 2; padding: 20px;">
    <img src="/images/about/me_garfagnana.png" alt="Featured" style="width: 50%; height: auto; object-fit: cover;">
  </div>
</div>
<footer style="text-align: center; margin-top: 100px;">
  © 2024 matteosaponati - based on <li><a href="https://github.com/academicpages/academicpages.github.io">academic pages</a></li>
</footer> -->