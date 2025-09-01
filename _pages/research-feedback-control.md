---
layout: first
title: research feedback control
permalink: /research-feedback-control/
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

    <h1>Design a novel optimization algorithm for neuromorphic devices</h1>

    <hr class="center-hr">

    <!-- News -->
    <section class="news-box">
      <ul>
        <li>
                <strong>05.11.24</strong>
                I gave a talk at the <a href="https://snufa.net" target="_blank">SNUFA Workshop 2024</a> (online). You can find the video of my talk <a href="https://youtu.be/PrkDW28eVko?si=mWH7dVDemBnzGjpA" target="_blank">here</a>.
            </li>
            <li>
                <strong>01.10.24</strong>
                I presented some early results at the <a href="https://bernstein-network.de/bernstein-conference/" target="_blank">Bernstein 2024</a> in Frankfurt Am Main (DE). You can find the abstract <a href="https://abstracts.g-node.org/abstracts/74509039-7adb-434e-94db-748438925263" target="_blank">here</a>.
            </li>
            <li>
                <strong>04.06.24</strong>
                First presentation of the project at the <a href="https://www.icnce-2024.de" target="_blank">ICNCE Conference 2024</a> in Aachen (DE).
            </li> 
      </ul>
    </section>

    <hr class="center-hr">
  
  <div style="text-align: left;">
  <br>

  I work on this project as a postdoctoral research scientist at ETH Zürich. I am working with Prof. Benjamin Grewe and Prof. Giacomo Indiveri at the Institute of Neuroinformatics (ETH/UZH). 
  <br><br>

  In biology we say "form is function," and in computing, we say "the hardware is the software." This reflects the idea that the physical properties and limitations of hardware significantly shape the algorithms that can run on it. The transmission, processing, and storage of information are all influenced by the specific hardware being used. In this project, I work with a specific hardware: mixed-signals neuromorphic devices. They are special-purpose, low-power silicon integrated circuits designed to mimic the behavior of biological neurons, with built-in computations and simple learning rules, e.g. STPD and the like.
  <br><br>

  The goal of my project is to move forward simple, hard-coded computations and advance the development of a scalable learning algorithm, inspired by biological processes, and compatible with neuromorphic hardware. To do that, I adapt the Machine Learning concepts of search and learning to the neuromorphic world and its hardware properties. I define the architecture and the self-organization principles of the system given a defined objective, and I let the optimizer search in the configuration space with the guidance of data. 
  <br><br>

  <div style="text-align: center;">
    <img 
    src="../images/projects/feedback-control-algorithm/network-architecture.png" 
    alt="Description of the image"
    style="display: block; margin: 0 auto; max-width: 80%; height: auto;">
  </div>

  <br>
  To capitalize on the features and characteristics of neuromorphic devices, I develop an optimizer based on feedback control and target-driven learning. In this approach, a control system monitors the activity of a subset of neurons in the network and compares it to a desired target activity. The controller computes the network's error and sends feedback spikes to guide its activity toward the target. Each neuron then adjusts its weights in real time, making proportional changes based on the feedback it receives. 
   <br><br>

  <div style="text-align: center;">
    <img 
    src="../images/projects/feedback-control-algorithm/learning-rule.png" 
    alt="Description of the image"
    style="display: block; margin: 0 auto; max-width: 40%; height: auto;">
  </div>

  <br>
  This process automatically programs the device by searching for the optimal targets and trainable parameters, without the need for explicit gradient computation. It leverages finely-tuned recurrent connections to facilitate this search. The optimization happens online, adjusting in real time as inputs continuously stream into the device.
  <br><br>
  The main outcomes of significance of this project is to connect several lines of research and support the development of scalable Neuromorphic chips that are achieve high performances while being implementable on low-power Neuromorphic processors. The success of this project opens to door for application with smart sensors, the Internet-Of-Things, robotics, self-driving cars, among others.  
  <br><br>

  <hr>
  refs:
  <br><br>
  <a href="https://www.cell.com/neuron/abstract/S0896-6273(23)00878-4" target="_blank">The hardware is the software</a>. 
  Laydevant, J., Wright, L. G., Wang, T., & McMahon, P. L. (2024). Neuron, 112(2), 180-183.
  <br><br>
  <a href="https://doi.org/10.3389/fnins.2011.00073" target="_blank">Neuromorphic silicon neuron circuits</a>
  Indiveri, G., Linares-Barranco, B., Hamilton, T. J., Schaik, A. V., Etienne-Cummings, R., Delbruck, T., ... & Boahen, K. (2011). Frontiers in neuroscience, 5, 73.
  <br><br>
  <a href="https://proceedings.neurips.cc/paper_files/paper/2020/hash/e7a425c6ece20cbc9056f98699b53c6f-Abstract.html" target="_blank">A theoretical framework for target propagation</a>. 
  Meulemans, A., Carzaniga, F., Suykens, J., Sacramento, J., & Grewe, B. F. (2020). Advances in Neural Information Processing Systems, 33, 20024-20036.
  <br><br>
  <a href="https://proceedings.neurips.cc/paper/2021/hash/25048eb6a33209cb5a815bff0cf6887c-Abstract.html" target="_blank">Credit Assignment in Neural Networks through Deep Feedback Control</a>. Meulemans, A., Tristany Farinha, M., García Ordóñez, J., Vilimelis Aceituno, P., Sacramento, J., & Grewe, B. F. (2021). Advances in Neural Information Processing Systems, 34, 4674-4687.



  
  </div>
