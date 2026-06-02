---
layout: first
title: research adversarial robustness
permalink: /research-adversarial-robustness/
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
    margin: 26px 0 24px;
    text-align: center;
  }

  .figure-block img{
    display: block;
    width: 100%;
    max-width: 760px;
    height: auto;
    margin: 0 auto;
  }

  .figure-caption{
    max-width: 760px;
    margin: 10px auto 0;
    font-size: 14px;
    line-height: 1.45;
    text-align: left;
  }

  .results-table-wrap{
    margin: 22px 0 30px;
    overflow-x: auto;
  }

  .results-table{
    width: 100%;
    border-collapse: collapse;
    font-size: 14px;
    line-height: 1.35;
  }

  .results-table caption{
    caption-side: top;
    margin-bottom: 10px;
    text-align: left;
    font-size: 14px;
    line-height: 1.45;
  }

  .results-table th,
  .results-table td{
    padding: 7px 9px;
    border-bottom: 1px solid #d8d8d8;
    text-align: center;
    white-space: nowrap;
  }

  .results-table th:first-child,
  .results-table td:first-child{
    text-align: left;
    white-space: normal;
  }

  .results-table thead th{
    border-top: 2px solid #222;
    border-bottom: 2px solid #222;
    font-weight: 700;
  }

  .results-table tbody tr.group-break td{
    border-top: 2px solid #222;
  }

  .results-table tbody tr:last-child td{
    border-bottom: 2px solid #222;
  }

  .results-table .table-bold{
    font-weight: bold !important;
  }

  @media (max-width: 760px){
    :root{ --text-size: var(--text-size-mobile); }
    .container{ padding: 0 16px; }
    .results-table{ font-size: 13px; }
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

  <h1>"A combination of noise and bilateral filters achieve supralinear and scalable adversarial robustness in CNNs."</h1>

  <div style="text-align: center;">
    <br>
    <strong>SUMMARY</strong>
  </div>
  <br>

  Adversarial perturbations can make convolutional neural networks fail even when the input changes are nearly invisible to humans. In this work, we study a simple defense strategy based on combining noise with bilateral filtering, and show that this combination can produce scalable gains in adversarial robustness.

  <div class="paper-link">
    <a href="https://arxiv.org/abs/2606.02267" target="_blank">CVPR 2026 paper</a>
  </div>

  <hr style="width: 40%; margin: 20px auto;">

  <br>
  <div style="text-align: center;">
  <strong class="section-title">1 - The intuition</strong>
  </div>
  <br>

An adversarial attack on an image $x$ is a perturbation vector $a_x$ small enough to be invisible to a human, yet large enough to push $x$ across the neural network's decision boundary. Formally, we require $\|a_x\| \leq r$, which defines an adversarial sphere of radius $r$ around the image.

To measure how vulnerable a classifier is at a given image, we define the adversarial volume,

\begin{equation}
    V_a(x) = \int_{z \in \mathbf{B}(x,r)} \mathbf{1}\!\left[f(z) \neq h(z) = f(x)\right] dz,
\end{equation}

where $\mathbf{B}(x,r)$ is the ball of radius $r$ around $x$, $f(\cdot)$ is the neural network, and $h(\cdot)$ is the true human classification. Intuitively, $V_a(x)$ measures the volume of attack-accessible space around an image that the network misclassifies. It is the central quantity in our analysis: fixing $V_a(x)$ lets us directly compare what different defenses do and do not cover.

<br><br>
<strong>Filters.</strong>

We model a filter as an idealized denoising function $\varphi: \mathcal{X} \rightarrow \mathcal{X}$ that leaves clean images unchanged and pushes any perturbation back toward the image manifold. The worst-case attack against a filter is a thin cylinder that enters the adversarial sphere and sneaks as close to the image as possible---the filter cannot cancel it because it lies too close to the image manifold. More precisely, for a fixed $V_a(x)$, a successful attack can exist when

\begin{equation}
    V_a(x) > r\!\left(1 - \lambda_{\varphi}^{\min}\right) S_{D-1}\!\left(c^{-1/2}\right),
\end{equation}

where $\lambda_{\varphi}^{\min}$ is the minimum eigenvalue of the Jacobian of $\varphi$ (how much it contracts the worst-case direction), and $S_{D-1}(c^{-1/2})$ is the surface area of a $(D{-}1)$-dimensional sphere with curvature $c$. Even when such an attack exists, the effective adversarial volume is reduced by a factor proportional to $|J_\varphi|$.

In short: filters work well against attacks that live far from the image manifold, near the outer edge of the adversarial sphere.

<br><br>
<strong>Noise.</strong>

Adding Gaussian noise with variance $\sigma^2$ to a perturbed image moves it in a random direction, disrupting adversarial attacks whenever the misclassified region is small. The worst case for noise is therefore the opposite of the worst case for filters: a large, compact adversarial region clustered around the attack point. Formally, the probability of an attack succeeding under noise is bounded by

\begin{equation}
    \Pr\!\left[x + a_x + \varepsilon \in A\right] \leq 1 - 2\,\mathrm{erf}\!\left(-\frac{\rho_D(V_a(x))}{\sigma}\right),
\end{equation}

where $\rho_D(V_a(x))$ is the radius of a $D$-dimensional sphere with volume $V_a(x)$. The bound shows that noise is effective when the adversarial volume is small and spread thin (filament-shaped attacks), and ineffective when the adversarial region is large and compact.

In short: noise works well against thin, filament-like attacks, but fails when the adversarial region forms a large sphere.


 <div class="figure-block">
    <img src="/images/projects/cvpr-adversarial-attacks/figure-theory-supralinear.png" alt="Illustration of the mathematical analysis of adversarial attacks, filters, and noise.">
  </div>

  This is an illustration of the concepts used in our analysis. An image (black rhombus) lies on a class manifold (blue line). The neural network separates these classes with a decision boundary (black line). An adversarial attack (red arrow) is a small perturbation of the image within a specified radius (red circle) that pushes it across this boundary. We illustrate adversarial attacks in the presence of a filter (green arrows) in (b)-(c). The filter attenuates perturbations from the image manifold, including those introduced by adversarial attacks. In <strong>(b)</strong>, the adversarial perturbation lies far from the image manifold, so the filter effectively cancels it. In <strong>(c)</strong>, the attack is close to the image manifold and cannot be fully suppressed by the filter. Then, we illustrate adversarial attacks against noise (green area) in (d)-(e). Noise introduces random deviations unknown to the attacker, which can disrupt adversarial perturbations. The attack that fails against the filter can succeed with high probability in the presence of noise, as the noise covers a broad region around the attack <strong>(d)</strong>. Conversely, the attack that succeeds against the filter is likely to fail when noise is added, since it is not spatially clustered <strong>(e)</strong>.

<br><br>
<strong>Why combining both defenses makes sense.</strong>

Filters and noise are complementary by design. Filters suppress attacks that are far from the image manifold, but miss attacks that hug it closely. Noise disrupts thin filament-like attacks, but is powerless against large, compact adversarial blobs. Together, they cover a wider range of attack geometries than either method alone.

In practice, we recommend applying noise first and then filtering, since this ordering preserves clean accuracy better. It is also worth noting that adversarial training---which pushes the learned decision boundary toward the true human boundary---directly reduces $V_a(x)$, making it a natural complement to both defenses, albeit at significant training cost.

<br><br>
  <div style="text-align: center;">
  <strong class="section-title">2 - Experiments</strong>
  </div>
  <br>

We start with an ablation on CIFAR10 under standard and adversarial evaluation. The key result is that noise and bilateral filtering are complementary: each method improves robustness in different attack regimes, while their combination gives the strongest overall gains.

  <div class="results-table-wrap">
    <table class="results-table">
      <caption>
        Ablation study showing test accuracy (%) on CIFAR10 under different adversarial attacks. “Linear gain” is the sum of gains from the individual defenses, while “actual gain” is the measured gain from combining the two methods.
      </caption>
      <thead>
        <tr>
          <th>Method</th>
          <th>Clean</th>
          <th>FGSM</th>
          <th><em>L</em><sub>&infin;</sub></th>
          <th>EoT.</th>
          <th><em>L</em><sub>2</sub></th>
          <th>C&amp;W</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Standard CNN</td>
          <td>74.5% &plusmn;2.4</td>
          <td>3.5% &plusmn;2.1</td>
          <td>0.2% &plusmn;0.4</td>
          <td>0.2% &plusmn;0.5</td>
          <td>1.3% &plusmn;0.6</td>
          <td>0.6% &plusmn;0.6</td>
        </tr>
        <tr>
          <td>+ Bil.</td>
          <td>69.0% &plusmn;2.2</td>
          <td>10.0% &plusmn;1.2</td>
          <td>1.0% &plusmn;0.4</td>
          <td>1.2% &plusmn;0.5</td>
          <td>11.9% &plusmn;1.4</td>
          <td>0.5% &plusmn;0.3</td>
        </tr>
        <tr>
          <td>+ Noise</td>
          <td>68.5% &plusmn;1.7</td>
          <td>22.8% &plusmn;1.3</td>
          <td>25.5% &plusmn;1.2</td>
          <td>12.0% &plusmn;0.9</td>
          <td>49.6% &plusmn;1.4</td>
          <td>43.0% &plusmn;1.0</td>
        </tr>
        <tr>
          <td>+ Noise + Bil.</td>
          <td>67.9% &plusmn;1.4</td>
          <td>33.9% &plusmn;1.7</td>
          <td>36.5% &plusmn;1.5</td>
          <td>18.9% &plusmn;1.4</td>
          <td>58.5% &plusmn;1.7</td>
          <td>47.2% &plusmn;1.0</td>
        </tr>
        <tr>
          <td>+ Bil. + Noise</td>
          <td>67.5% &plusmn;0.3</td>
          <td>30.8% &plusmn;0.5</td>
          <td>28.1% &plusmn;0.5</td>
          <td>15.1% &plusmn;0.5</td>
          <td>54.1% &plusmn;0.4</td>
          <td>41.8% &plusmn;0.6</td>
        </tr>
        <tr class="group-break">
          <td>Linear gain</td>
          <td>-11.5%</td>
          <td>25.8%</td>
          <td>26.1%</td>
          <td>12.8%</td>
          <td class="table-bold">58.9%</td>
          <td>42.3%</td>
        </tr>
        <tr>
          <td class="table-bold">Actual gain</td>
          <td class="table-bold">-6.6%</td>
          <td class="table-bold">30.4%</td>
          <td class="table-bold">36.2%</td>
          <td class="table-bold">18.7%</td>
          <td>57.2%</td>
          <td class="table-bold">46.6%</td>
        </tr>
      </tbody>
    </table>
  </div>

  We then scale the same preprocessing strategy to stronger models and AutoAttack. The preprocessing step consistently improves adversarial robustness, and on the largest model it reaches the best AutoAttack accuracy while using substantially less artificial data than the strongest baseline.

  <div class="results-table-wrap">
    <table class="results-table">
      <caption>
        Test accuracy (%) on clean CIFAR-10 and under AutoAttack, including its EoT variant. <em>Prepro. 10/50</em>, <em>20/80</em>, and <em>20/100</em> refer to the number of bilateral filters used during training and inference, respectively.
      </caption>
      <thead>
        <tr>
          <th>Method</th>
          <th>Epochs</th>
          <th>Artificial data</th>
          <th>Clean</th>
          <th>AutoAttack</th>
          <th>EoT AutoAttack</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>WRN-28-4</td>
          <td>400</td>
          <td>1 M</td>
          <td class="table-bold">87.44%</td>
          <td>58.28%</td>
          <td>-</td>
        </tr>
        <tr>
          <td>+ <em>Prepro. 10/50</em></td>
          <td></td>
          <td></td>
          <td>86.32%</td>
          <td class="table-bold">67.24%</td>
          <td>62.36%</td>
        </tr>
        <tr class="group-break">
          <td>WRN-28-10</td>
          <td>400</td>
          <td>1 M</td>
          <td class="table-bold">88.96%</td>
          <td>61.60%</td>
          <td>-</td>
        </tr>
        <tr>
          <td>+ <em>Prepro. 10/50</em></td>
          <td></td>
          <td></td>
          <td>87.70%</td>
          <td>68.56%</td>
          <td>63.68%</td>
        </tr>
        <tr>
          <td>+ <em>Prepro. 20/80</em></td>
          <td></td>
          <td></td>
          <td>88.24%</td>
          <td class="table-bold">69.60%</td>
          <td class="table-bold">67.2%</td>
        </tr>
        <tr class="group-break">
          <td>WRN-28-10</td>
          <td>2400</td>
          <td>20 M</td>
          <td>90.12%</td>
          <td>64.40%</td>
          <td>-</td>
        </tr>
        <tr>
          <td>+ <em>Prepro. 20/80</em></td>
          <td></td>
          <td></td>
          <td class="table-bold">90.52%</td>
          <td class="table-bold">73.08%</td>
          <td>70.9%</td>
        </tr>
        <tr class="group-break">
          <td>SotA model</td>
          <td>10000</td>
          <td>500 M</td>
          <td class="table-bold">93.68%</td>
          <td>73.71%</td>
          <td>-</td>
        </tr>
        <tr class="group-break">
          <td>WRN-82-12</td>
          <td>3000</td>
          <td>150 M</td>
          <td>93.04%</td>
          <td>71.41%</td>
          <td>-</td>
        </tr>
        <tr>
          <td>+ <em>Prepro. 20/100</em></td>
          <td>3000</td>
          <td>50 M</td>
          <td>90.12%</td>
          <td class="table-bold">74.32%</td>
          <td>73.00%</td>
        </tr>
      </tbody>
    </table>
  </div>

  The preprocessor also scales efficiently with model size and training compute. When added to WRN models, it consistently improves robust accuracy at comparable training FLOPs, and reaches the same target robustness as competing methods while using substantially less training compute. This suggests that the defense is not just improving a single model, but shifting the accuracy-compute tradeoff in a favorable direction.

  <div class="figure-block">
    <img src="/images/projects/cvpr-adversarial-attacks/figure-FLOPs.png" alt="AutoAttack accuracy as a function of training FLOPs for models with and without the preprocessor.">
    <div class="figure-caption">
      Test accuracy (%) under AutoAttack as a function of training FLOPs. Models trained with the preprocessor are shown in green, models without it in orange, and previous work in blue. The preprocessor improves robust accuracy at similar training cost and matches stronger baselines that require substantially more compute. Panel <strong>(b)</strong> compares selected model families from panel <strong>(a)</strong>, highlighting the gains from preprocessing at 400 and 2400 training epochs.
    </div>
  </div>

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">3 - Discussion</strong>
  </div>
  <br>

  In this work, we analyzed how idealized denoising filters and Gaussian noise affect the geometry of adversarial attacks. The main takeaway is that the two methods cancel different attack shapes: filters suppress perturbations far from the image manifold, while noise disrupts thin, localized adversarial regions. This complementarity motivates combining them.

  <br><br>
  Experimentally, a preprocessor that combines Gaussian noise with bilateral filtering gives supra-linear gains in adversarial robustness compared to either method alone, while keeping the drop in clean accuracy small. When combined with adversarially trained WRNs, the same idea improves robustness across the attacks we tested, including AutoAttack and attacks designed to target the preprocessor directly.

  <br><br>
  The result is a lightweight way to improve robustness with minimal computational overhead. For the full mathematical analysis, attack setup, and extended benchmarks, see the <a href="https://cvpr.thecvf.com/virtual/2026/poster/37609" target="_blank">CVPR 2026 paper</a>.

  <br><br>
  <hr>
  refs:
  <br><br>
  [1] <a href="https://proceedings.mlr.press/v80/athalye18b.html" target="_blank">Synthesizing Robust Adversarial Examples</a>.
  Athalye, A., Engstrom, L., Ilyas, A., and Kwok, K. In Proceedings of the 35th International Conference on Machine Learning, pages 284-293. PMLR, 2018.
  <br>
  [2] <a href="https://arxiv.org/abs/1312.6199" target="_blank">Intriguing Properties of Neural Networks</a>.
  Szegedy, C., Zaremba, W., Sutskever, I., Bruna, J., Erhan, D., Goodfellow, I., and Fergus, R. arXiv:1312.6199, 2014.
  <br>
  [3] <a href="https://arxiv.org/abs/2010.09670" target="_blank">RobustBench: A Standardized Adversarial Robustness Benchmark</a>.
  Croce, F., Andriushchenko, M., Sehwag, V., Debenedetti, E., Flammarion, N., Chiang, M., Mittal, P., and Hein, M. arXiv:2010.09670, 2020.
  <br><br>

  </article>
</main>
</div>
