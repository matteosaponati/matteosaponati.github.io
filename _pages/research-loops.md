---
layout: first
title: research loops
permalink: /research-loops/
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
  .research .section-title{ color: #3a0a57; font-weight: 700; }
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

  .toc-wrap{
    border-top: 1px solid #ded9e3;
    border-bottom: 1px solid #ded9e3;
    margin: 22px 0 28px;
    padding: 14px 0 16px;
  }

  .toc-wrap h2{
    margin: 0 0 8px;
    font-size: 19px;
  }

  .toc-wrap ul{
    margin: 0;
    padding-left: 0;
    list-style: none;
  }

  .toc-wrap li{
    display: grid;
    grid-template-columns: 120px minmax(0, 1fr);
    column-gap: 22px;
    margin: 18px 0;
    align-items: start;
  }

  .toc-date{
    color: #4b0b70;
    font-weight: 700;
    line-height: 1.35;
  }

  .toc-date::before{
    content: "";
    display: inline-block;
    width: 7px;
    height: 7px;
    margin-right: 10px;
    border-radius: 50%;
    background: #4b0b70;
    vertical-align: 0.15em;
  }

  .toc-title{
    display: inline-block;
    font-size: 1.08em;
    line-height: 1.35;
  }

  .toc-description{
    margin: 5px 0 0;
    color: #4d4358;
    font-size: 0.92em;
    line-height: 1.45;
  }

  .section-anchor{
    scroll-margin-top: 24px;
  }

  .experiment-header{
    text-align: center;
  }

  .experiment-date{
    margin-top: 6px;
    color: #7d7484;
    font-size: 0.88em;
    line-height: 1.35;
  }

  .experiment-link{
    display: inline-block;
    margin-top: 4px;
    font-size: 0.86em;
    line-height: 1.35;
  }

  .experiment-link img{
    width: 18px;
    height: 18px;
    display: block;
  }

  .figure-block{
    margin: 28px 0;
    text-align: center;
  }

  .figure-block img{
    display: block;
    width: 100%;
    max-width: 860px;
    height: auto;
    margin: 0 auto;
  }

  .figure-caption{
    max-width: 860px;
    margin: 10px auto 0;
    font-size: 14px;
    line-height: 1.45;
    text-align: left;
  }

  .figure-block.compact img,
  .figure-block.compact .figure-caption{
    max-width: 620px;
  }

  .figure-caption strong,
  .research strong{
    font-family: Menlo, Monaco, Consolas, "Courier New", monospace;
    font-weight: 900 !important;
    color: #111;
  }

  .research-question-card{
    max-width: 720px;
    margin: 26px auto;
    padding: 18px 24px;
    border: 1px solid #d8cbe8;
    border-radius: 12px;
    background: rgba(250, 248, 255, 0.72);
    text-align: center;
    line-height: 1.55;
  }

  .takeaway{
    margin: 24px 0 18px;
    padding: 8px 0 8px 18px;
    border-left: 2px solid #5d1689;
    line-height: 1.6;
  }

  .takeaway strong{
    color: #3a0a57;
  }

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

    .toc-wrap li{
      grid-template-columns: 1fr;
      row-gap: 6px;
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

<main class="container">
  <div class="menu-divider" aria-hidden="true"></div>

  <article class="research">

    <h1>research loops and self-improvement.</h1>

    <hr class="center-hr">

  <div style="text-align: center;">
  <br>
  <strong>SUMMARY</strong>
  </div>
  <br>

  In this solo project, I run experiments on recursive self-improvement with coding agents. I believe the ingredients are in place, we just need to explore.
  <br><br>
  I test this investigating automatic ML research. I take some inspiration from the classical <a href="https://github.com/karpathy/autoresearch" target="_blank">Karpathy's autoresearch loop</a> and <a href="https://x.com/PrimeIntellect/status/2055056380881744365" target="_blank">work from Prime Intellect</a>. A detailed description of the experiments is <a href="https://github.com/matteosaponati/research-loop-self-improvement" target="_blank">here</a>.
  

  <div class="figure-block">
    <img src="/images/projects/research-loops-batch-one/illustration.png">
    <div class="figure-caption">
      There are 4 degrees of freedom in these experiments: (1) the <strong>coding agent</strong> (the optimizer), (2) the <strong>program.md</strong> instructions (the config, hyperparameters, etc.), (3) the <strong>codebase</strong>, split into paths the agent can modify (the search space and initial conditions) and paths it cannot (e.g. the loss function), and (4) the <strong>memory</strong> the agent curates across iterations (artifacts and checkpoints).
    </div>
  </div>

I set up a harness where a coding agent receives instructions via a markdown file, acts on a codebase, and is evaluated against an immutable test suite. It can curate artifacts and compound knowledge across multiple research loop iterations. Throughout this project, I test variations across each degree of freedom and investigate research questions as evidence accumulates. The project is structured in batches of experiments, each defined by: (1) a question being addressed, (2) an experimental setup and the number of runs required, and (3) evaluation criteria. I document experimentation, results, and technical details as I go. The format may evolve, as this is itself an experimental setup. I am essentially a self-improving agent running experiments on self-improving agents. I love the dualism.
<br><br>
Below I list the experiment batches, with takeaways and next steps. Feel free to leave anonymous feedback <a href="https://www.admonymous.co/matteo-saponati" target="_blank">here</a>. I want to thank some colleagues at Tufa Labs for suggestions and feedbacks on the initial state of this project.

  <hr style="width: 40%; margin: 20px auto;">

  <nav class="toc-wrap" aria-label="Table of contents">
    <h2>experiments</h2>
    <br>
    <ul>
      <li>
        <span class="toc-date">19.05.26</span>
        <div>
          <a class="toc-title" href="#first-batch-gpt-53-spark-180526">the unexpected effectiveness of gpt-5.3-spark.</a>
          <p class="toc-description">First test of my custom harness with multiple coding agents. I ask the question "can an AI agent run a small research loop reliably?". I observe that agents are better than random search in decreasing final validation loss, with interesting differences. </p>
        </div>
      </li>
      <li>
        <span class="toc-date">??.??.26</span>
        <div>
          <a class="toc-title" href="#first-batch-gpt-53-spark-200526">coming soon.</a>
          <p class="toc-description">next batch of experiments on null environments.</p>
        </div>
      </li>
    </ul>
  </nav>

  <br>
  <div id="first-batch-gpt-53-spark-180526" class="section-anchor experiment-header">
    <strong class="section-title">the unexpected effectiveness of gpt-5.3-spark.</strong>
    <div class="experiment-date">19.05.26</div>
    <a class="experiment-link" href="https://x.com/matteosaponati/status/2056730668936069395?s=20" target="_blank" aria-label="X article"><img src="/images/general/x_icon.png" alt="X"></a>
  </div>
  <br>

This first batch of experiments serves to stress-test the research loop hands-on and validate the experimental infrastructure ahead of future work. Concretely, I address the following research question using the research loop codebase and harness I developed:

  <div class="research-question-card">
    <strong>Research Question</strong>: can an AI agent run a small research loop reliably? Can it make real progress?
  </div>


  <div class="takeaway">
    <strong>Takeaway 1</strong>. Yes, some agents outperform random search, suggesting the loop has genuine research value.
  </div>

  <div class="figure-block compact">
    <img src="/images/projects/research-loops-batch-one/val_bpb_best_so_far_with_raw_mean_band_successful_gpt53_standard.png" alt="Validation bits per byte best-so-far curve with raw mean band for successful gpt-5.3-codex-spark standard runs.">
    <div class="figure-caption">
      <strong>Figure 1.</strong> Validation bpb across an autoresearch-style research loop, with each 
condition repeated 10 times. Random refers to a baseline policy that selects a random 
hyperparameter value at each research loop step. For each condition: the solid line shows the median across all 10 runs at that step; the 
shaded region spans the 25th–75th percentile range, and the <strong>dashed 
line</strong> tracks the single best run across all 10 repeats, with the star marking the 
lowest validation bpb achieved.
    </div>
  </div>
 
The harness highlights clear differences in model trajectories: gpt-5.5 and gpt-5.3-codex-spark both exhibit genuine downward val bpb trends, while gpt-5.3-codex surprisingly underperforms random. At this early stage, gpt-5.3-codex-spark is largely on par with gpt-5.5. This might change with more iterations: the original Karpathy autoresearch loop ran for ~80 steps, and <a href="https://www.weco.ai/blog/autoresearch-vs-classical-hpo" target="_blank">other studies</a> have pushed this to hundreds of runs. I expect the gap between models to widen non-linearly. Perhaps with gpt-5.5 pulling ahead once the loop runs long enough to reveal its ceiling.

<br><br>

<div class="takeaway">
  <strong>Takeaway 2</strong>. This loop shows a clear hierarchy across agents.
</div>

  <div class="figure-block">
    <img src="/images/projects/research-loops-batch-one/run_summary_boxplots_successful_gpt53.png" alt="Run summary boxplots for successful gpt-5.3-codex-spark research-loop runs.">
    <div class="figure-caption">
      <strong>Figure 2.</strong> Evaluation run summaries. Each dot represents a single run; box plots show the median with the 25th–75th percentile range. <strong>Left:</strong> Percentage of accepted changes relative to the total number of experiments. <strong>Center:</strong> Number of new Codex sessions opened after the first one within a given experiment (by construction, Random always scores zero as Codex was not used in that condition). <strong>Right:</strong> Number of valid experiments per run (i.e. experiments that completed without crashing or errors); the horizontal dashed line indicates the theoretical maximum number of 5-minute runs achievable within a 4h15m experiment window, excluding initial overhead.
    </div>
  </div>

Within this harness, moving from gpt-5.3-codex to gpt-5.5, agents propose more effective changes and sustain experiments for longer before ending a session. gpt-5.3-codex-spark unsurprisingly runs the most experiments on average, as its lighter reasoning overhead leaves more budget for actual experimentation, and it is also notably more resilient and effective than standard gpt-5.3-codex.

<br><br>

<div class="takeaway">
  <strong>Takeaway 3</strong>. A higher rate of accepted changes does not necessarily translate to lower 
  validation bpb (trying harder $\neq$ trying smarter).
</div>

  <div class="figure-block">
    <img src="/images/projects/research-loops-batch-one/standard_eval_idea_share_successful_gpt53.png" alt="Standard evaluation idea share for successful gpt-5.3-codex-spark research-loop runs.">
    <div class="figure-caption">
    <strong>Figure 3.</strong> For each hyperparameter category (x-axis, ordered by average val bpb 
improvement), the bars show the share of runs in which at least one experiment targeting that 
category achieved a lower val bpb than the previous best. The annotations above each bar 
indicate the average val bpb reduction obtained when that category did improve (larger values 
= greater improvement). Plot inspired by <a href="https://x.com/eliebakouch/status/2055059154738278851?s=20" target="_blank">Elie Bakouch</a>.
    </div>
  </div>

While gpt-5.3-codex mostly explores learning rate tuning, both gpt-5.3-codex-spark and gpt-5.5 also propose architectural and structural changes. Notably, gpt-5.3-codex-spark's suggestions tend to be more effective at reducing validation loss. The best-performing idea so far is increasing model depth, which this model proposes less frequently but with greater impact.

<br><br>

<strong>Final evaluation.</strong> Agents can achieve significant improvements in final validation loss within my custom harness, though this holds for some agents and not others. The harness reveals clear differences in agentic behavior, and a surprising effectiveness of gpt-5.3-codex-spark, at least within this research loop window. The interesting question is what happens beyond it.


If you are interested, I try to document everything as max as possible. You find all the agent traces, the experiments tried in eeach experiments, and all the artifacts in <a href="https://github.com/matteosaponati/research-loop-self-improvement/tree/experiments-batch-1" target="_blank">here</a>.



<br><br>

  <br>
  <div id="first-batch-gpt-53-spark-200526" class="section-anchor experiment-header">
    <strong class="section-title">coming soon.</strong>
    <div class="experiment-date">??.??.26</div>
    <a class="experiment-link" href="https://x.com/matteosaponati/status/2056730668936069395?s=20" target="_blank" aria-label="X article"><img src="/images/general/x_icon.png" alt="X"></a>
  </div>
  <br>

 Testing agents in new search spaces.



<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>
