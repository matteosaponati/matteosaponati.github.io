---
layout: first
title: research feedback control
permalink: /research-feedback-control/
author_profile: false
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

  <p style="font-size: 18px; margin-top: 20px;">
  <div style="text-align: center;">
    <h2>Design a novel optimization algorithm for neuromorphic devices</h2> 
  </div>
  <br>

  <hr>
  <div class="news-container">
        <ul>
            <li>
                <strong>01.10.24</strong>
                I presented some early results at the <a href="https://bernstein-network.de/bernstein-conference/" target="_blank">Bernstein 2024</a> in Frankfurt Am Main (DE). You can find the abstract <a href="https://abstracts.g-node.org/abstracts/74509039-7adb-434e-94db-748438925263" target="_blank">here</a>.
            </li>
            <li>
                <strong>04.06.24</strong>
                First presentation of the project at the <a href="https://www.icnce-2024.de" target="_blank">ICNCE Conference 2024</a> in Aachen (DE).
            </li>
        </ul>
    </div>
    <hr>
  
  <br>
  In biology we say "form is function," and in computing, we say "the hardware is the software." This reflects the idea that the physical properties and limitations of hardware significantly shape the algorithms that can run on it. The transmission, processing, and storage of information are all influenced by the specific hardware being used. In this project, I work with a specific hardware: mixed-signals neuromorphic devices. Trying to break this down, these devices combine analog units (the neurons) that communicate through binary digital events (the spikes). They are special-purpose, low-power silicon integrated circuits designed to mimic the behavior of biological neurons, with built-in computations and simple learning rules, e.g. STPD and the like.
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
  