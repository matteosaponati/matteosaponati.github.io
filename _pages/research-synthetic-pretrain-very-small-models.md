---
layout: first
title: synthetic pretraining very small reasoning models
permalink: /synth-pretrain-very-small-reasoning-models/
author_profile: false
---

<style>
  :root{
    --text-size-desktop: 16px;
    --text-size-mobile: 15px;
    --text-size: var(--text-size-desktop);
  }

  .container { max-width: 1000px; margin: 0 auto; padding: 0 90px; }
  .page-header { padding-top: 18px; }
  .topbar { display: flex; justify-content: flex-end; }
  .link-list { list-style: none; display: flex; gap: 18px; margin: 0; padding: 0; }

  .research{ font-size: var(--text-size); line-height: 1.65; }
  .research .section-title{ color: #3a0a57; font-weight: 700; }
  .research p{ font-size: var(--text-size) !important; line-height: 1.65; }
  .research li{ font-size: var(--text-size); }

  .paper-link{
    text-align: center;
    margin: 18px 0 0;
  }

  .paper-link a{
    text-decoration: none;
  }

  .figure-block{
    margin: 28px 0 28px;
    text-align: center;
  }

  .figure-block img{
    display: block;
    width: 100%;
    max-width: 820px;
    height: auto;
    margin: 0 auto;
  }

  .figure-caption{
    max-width: 820px;
    margin: 10px auto 0;
    font-size: 14px;
    line-height: 1.45;
    text-align: left;
  }

  @media (max-width: 760px){
    :root{ --text-size: var(--text-size-mobile); }
    .container{ padding: 0 16px; }
  }
</style>

<div class="single-column">
  
 <header class="page-header">
  <div class="container topbar">
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

    <h1>building a cognitive core 1: synthetic pretraining for very small reasoning models.</h1>

    <hr class="center-hr">

  <div style="text-align: center;">
  <br>
  <strong>SUMMARY</strong>
  </div>
  <br>
  A cognitive core is a very small reasoning model with high context engineering, very high reasoning skills, and little static knowledge (see e.g. <a href="https://x.com/karpathy/status/1938626382248149433" target="_blank">here</a>). I want to build this.
  <br><br>
  To this goal, this project asks a first practical question: can synthetic pretraining data make very small language models better at reasoning?
  <br><br>
  We pretrain dense 0.8B Qwen-style models on a math corpus, then compare the original data against three synthetic augmentations. The answer is yes: synthetic pretraining improves few-shot reasoning on GSM8K and MATH500, strengthens in-context learning, and reaches the original model's final performance with substantially fewer training tokens.

  <div class="paper-link">
    <a href="https://tufalabs.ai/research/enhancing-reasoning-small-language-models/" target="_blank">Research post (Tufa Labs)</a>
  </div>

  <hr style="width: 40%; margin: 20px auto;">

  <br>
  <div style="text-align: center;">
  <strong class="section-title">1 - Why synthetic pretraining?</strong>
  </div>
  <br>

  Synthetic data is becoming a central part of modern language-model pretraining. Beyond simply adding more text, it gives us control over the training signal: we can rewrite examples to expose hidden reasoning steps, add missing context, and make dependencies easier for an autoregressive learner to recover.

  <br><br>
  The hypothesis here is simple. If math-heavy data is rewritten into more explicit, reasoning-friendly trajectories, then each token should carry more useful supervision. This should matter especially for very small models, where every token and every parameter has to work harder.

  <br><br>
  We test three data transformations:
  <br>
  1. <strong>TPT</strong>, which adds explicit thought-process structure.
  <br>
  2. <strong>First principles</strong>, which turns source documents into learning-note style explanations.
  <br>
  3. <strong>Rephrasing</strong>, which rewrites documents to maximize learnability for a small student model.

  <br><br>
  All synthetic data is generated with a same-scale 0.8B Qwen model in non-thinking mode. This is deliberately constrained: the goal is not to distill from a huge teacher, but to test whether synthetic formatting and reasoning structure can improve pretraining even when the generator is small.

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">2 - Main result: better few-shot reasoning</strong>
  </div>
  <br>

  We evaluate the pretrained models on GSM8K and MATH500 using chain-of-thought prompting across different numbers of demonstrations. The key metric is the gain over zero-shot accuracy:

  $$
  \text{gain}(k) = \text{acc}(k) - \text{acc}(0).
  $$

  This isolates how much the model benefits from in-context demonstrations, rather than only measuring its baseline zero-shot ability.

  <div class="figure-block">
    <img src="/images/projects/cc-1-synthetic-pretraining/figure-1.png" alt="Few-shot gain over zero-shot accuracy for original and synthetic pretrained models on GSM8K and MATH500.">
    <div class="figure-caption">
      <strong>Figure 1.</strong> Synthetic pretraining improves few-shot gains on GSM8K and MATH500. The gap grows with more demonstrations, suggesting that synthetic data strengthens in-context learning rather than only improving zero-shot performance.
    </div>
  </div>

  Across both benchmarks, the synthetic variants improve over the original corpus. The gains are especially clear from 0-shot to 2-shot and remain stable as more examples are added.

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">3 - Robustness to prompt examples</strong>
  </div>
  <br>

  Few-shot evaluation can be fragile: results depend on which examples are shown, in what order, and how closely the prompt format matches the model's training distribution. To check that the effect is not just a lucky set of demonstrations, we repeat the evaluation with random chain-of-thought examples sampled per question.

  <div class="figure-block">
    <img src="/images/projects/cc-1-synthetic-pretraining/figure-2.png" alt="Few-shot gain with randomly sampled chain-of-thought demonstrations across random seeds.">
    <div class="figure-caption">
      <strong>Figure 2.</strong> The gains remain under randomly sampled demonstrations. Error bars show variation across seeds, and synthetic pretraining continues to outperform the original dataset.
    </div>
  </div>

  The randomized setting keeps the same overall conclusion and makes differences between synthetic prompts easier to see. This supports the view that the models are genuinely learning better reasoning behavior, not just benefiting from a fixed demonstration template.

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">4 - Is it reasoning, or just formatting?</strong>
  </div>
  <br>

  Math benchmarks can reward formatting as well as reasoning. For example, a model may know the answer but fail because it does not place it in the expected format. To separate these effects, we compare strict parsing with more flexible answer extraction.

  <div class="figure-block">
    <img src="/images/projects/cc-1-synthetic-pretraining/figure-3.png" alt="Breakdown of cases where the original model fails under strict and flexible parsing.">
    <div class="figure-caption">
      <strong>Figure 3.</strong> Most improvements are not just formatting fixes. The synthetic models often solve examples that the original model fails even under flexible parsing.
    </div>
  </div>

  The dominant pattern is that the original model fails even when answers are parsed flexibly. That means the synthetic models are usually gaining real problem-solving ability, not merely learning to wrap answers in the correct syntax.

  <div class="figure-block">
    <img src="/images/projects/cc-1-synthetic-pretraining/supplementary-figure-1.png" alt="Supplementary breakdown of questions solved by only the original model, only the synthetic model, or both.">
    <div class="figure-caption">
      <strong>Supplementary Figure 1.</strong> A complementary view of strict and flexible correctness, separating examples solved only by the original model, only by the synthetic model, or by both.
    </div>
  </div>

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">5 - Token efficiency during training</strong>
  </div>
  <br>

  Another useful question is whether the benefit appears only at the end of training, or whether synthetic data changes the training trajectory itself. The checkpoint results suggest that the effect emerges early.

  <div class="figure-block">
    <img src="/images/projects/cc-1-synthetic-pretraining/figure-4.png" alt="Strict accuracy as a function of training tokens seen for original and synthetic models.">
    <div class="figure-caption">
      <strong>Figure 4.</strong> Synthetic models reach the original model's final performance with fewer tokens. The effect is strongest for the rephrasing and TPT prompts, which show more stable gains across training.
    </div>
  </div>

  In practice, synthetic runs match the original model's final performance using roughly 3-6x fewer training tokens on GSM8K and about 2.5x fewer tokens on MATH500. This is the main practical reason the result is interesting: synthetic data improves the utility of each pretraining token.

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">6 - What changes in the data?</strong>
  </div>
  <br>

  The three prompts do not produce the same kind of augmentation. TPT and first-principles generations are much longer, while rephrasing stays closer to the original row length. Despite these differences, all three variants improve downstream reasoning.

  <div class="figure-block">
    <img src="/images/projects/cc-1-synthetic-pretraining/figure-5.png" alt="Distribution of row lengths for the original and synthetic datasets.">
    <div class="figure-caption">
      <strong>Figure 5.</strong> Synthetic prompts change the length distribution in different ways. Rephrasing is comparatively compact, while TPT and first-principles augmentations are longer and more explanatory.
    </div>
  </div>

  This suggests that there is more than one useful mechanism. Longer synthetic examples may add explicit reasoning traces, while compact rephrasing may make the same content easier to learn. The common ingredient is not simply more tokens, but a better training signal.

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">7 - Takeaways</strong>
  </div>
  <br>

  The main result is that synthetic pretraining can improve reasoning in very small models, even when the generator is itself very small. This challenges two common assumptions: that synthetic data only helps when produced by much larger teachers, and that it mainly helps low-quality corpora. Here, the source corpus is already heavily curated, yet synthetic augmentation still improves reasoning.

  <br><br>
  I think this is a useful first step toward building cognitive-core style models: small systems with less static knowledge, but stronger reasoning over the context they are given. The open question is how to separate gains from synthetic data generation, data reformatting, and implicit distillation. More details, methodology, and citation information are available in the <a href="https://tufalabs.ai/research/enhancing-reasoning-small-language-models/" target="_blank">full Tufa Labs post</a>.

  <br><br>
  <hr>
  refs:
  <br><br>
  [1] <a href="https://tufalabs.ai/research/enhancing-reasoning-small-language-models/" target="_blank">Synthetic pretraining for very small reasoning models</a>.
  Saponati, M. Tufa Labs Research, Apr 2026.
  <br><br>

<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async
  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>

  </article>
</main>
</div>
