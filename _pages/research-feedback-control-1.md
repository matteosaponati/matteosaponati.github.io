---
layout: first
title: feedback control single layer
permalink: /research-feedback-control-1/
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

  .results-table tbody tr:last-child td{
    border-bottom: 2px solid #222;
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

  <h1>"Mixed-signal implementation of feedback-control optimizer for single-layer spiking neural networks"</h1>

  <div style="text-align: center;">
    <br>
    <strong>SUMMARY</strong>
  </div>
  <br>

  On-chip learning is one of the main missing pieces for adaptive neuromorphic systems. Backpropagation through time works well in software, but it is hard to map directly to mixed-signal neuromorphic hardware because it requires global information, stored activity traces, and batch-style processing. This paper shows a proof-of-concept implementation of a spike-based feedback-control optimizer on the DYNAP-SE mixed-signal neuromorphic processor.

  <br><br>
  The core result is that a single-layer spiking neural network can be trained directly in a computer-in-the-loop setup on real hardware, despite device mismatch, noise, limited observability, and quantized synapses. The hardware-trained network matches numerical simulations on a binary task and reaches comparable performance to a gradient-trained single-layer ANN on the nonlinear Yin-Yang benchmark.

  <div class="paper-link">
    <a href="https://arxiv.org/abs/2603.24113" target="_blank">arXiv paper</a>
  </div>

  <hr style="width: 40%; margin: 20px auto;">

  <br>
  <div style="text-align: center;">
  <strong class="section-title">1 - The learning rule</strong>
  </div>
  <br>

  The optimizer trains the output synapses using feedback-control signals instead of backpropagation. Each class has an output neuron and two controller neurons that compare the desired target activity with the measured output activity.

  <br><br>
  If the output fires too little, the positive controller increases the feedback signal; if it fires too much, the negative controller suppresses it. The resulting local update is:

  $$
  w_t = w_{t-1} + \eta I^{fb}_t s^{in}_t,
  $$

  where \(s^{in}_t\) is the presynaptic spike, \(I^{fb}_t\) is the controller-generated feedback current, and \(\eta\) is the learning rate. The key point is that learning is online, local, and compatible with spike-based hardware signals.

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">2 - The hardware setting</strong>
  </div>
  <br>

  The experiments run on DYNAP-SE, a mixed-signal neuromorphic processor with analog spiking neurons and configurable digital routing. This setting is difficult because neurons and synapses vary across the chip, internal states are only partially observable, and weights are quantized.

  <br><br>
  To make learning robust, each logical unit is represented by a population of 10 hardware neurons. Synaptic strength is encoded through the number of parallel synaptic connections, giving a discrete but hardware-compatible weight representation.

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">3 - Computer-in-the-loop training</strong>
  </div>
  <br>

  Training is computer-in-the-loop. The chip runs the spiking dynamics, while the host sends input and target spikes, records activity, estimates the feedback current, computes the weight update, quantizes it, and writes the new configuration back to the chip.

  <br><br>
  This is not yet a fully embedded learning circuit, but it tests the optimizer under real mixed-signal constraints rather than only in simulation. Calibration is still required for spike generators, synaptic transfer curves, and controller biases.

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">4 - Results</strong>
  </div>
  <br>

  On a binary classification task, the DYNAP-SE implementation reaches 100% test accuracy, matching numerical simulation. On the nonlinear Yin-Yang benchmark, it reaches 67% accuracy, close to both the numerical spiking simulation and the single-layer ANN baseline reported in the paper.

  <br><br>
  The result is modest in scale but meaningful: the same learning principle works despite analog mismatch, noisy dynamics, and quantized synapses.

  <div class="results-table-wrap">
    <table class="results-table">
      <thead>
        <tr>
          <th>Dataset</th>
          <th>Metric</th>
          <th>Numerical sim.</th>
          <th>DYNAP-SE</th>
          <th>Power</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Binary</td>
          <td>Accuracy</td>
          <td>100%</td>
          <td>100%</td>
          <td>41 &micro;W</td>
        </tr>
        <tr>
          <td>Binary</td>
          <td>Target error</td>
          <td>3.9 Hz</td>
          <td>2.1 Hz</td>
          <td></td>
        </tr>
        <tr>
          <td>Yin-Yang</td>
          <td>Accuracy</td>
          <td>63%</td>
          <td>67%</td>
          <td>189 &micro;W</td>
        </tr>
        <tr>
          <td>Yin-Yang</td>
          <td>Target error</td>
          <td>7.2 Hz</td>
          <td>6.1 Hz</td>
          <td></td>
        </tr>
      </tbody>
    </table>
  </div>

  <br>
  <div style="text-align: center;">
  <strong class="section-title">5 - Why this matters</strong>
  </div>
  <br>

  The paper does not claim a finished autonomous training system. The update is still computed by the host computer, and scaling to deeper networks remains open. Its main contribution is showing that feedback-control learning survives contact with real neuromorphic hardware.

  <br><br>
  This matters because the method avoids the assumptions that make backpropagation hard to deploy on mixed-signal chips: global error transport, precise stored activations, and high-precision weights. It points toward low-power systems that can adapt after deployment using hardware-native signals.

  <br><br>
  <div style="text-align: center;">
  <strong class="section-title">6 - Discussion</strong>
  </div>
  <br>

  The central lesson is that feedback control can bridge learning theory and neuromorphic implementation. Rather than forcing backpropagation onto the chip, the network is driven toward target activity, and the resulting feedback becomes the learning signal.

  <br><br>
  The next step is to embed more of the controller and update rule directly in hardware, and to extend the approach beyond single-layer networks. See the paper for the full implementation details, calibration procedure, and experimental analysis.

  <br><br>
  <hr>
  refs:
  <br><br>
  [1] <a href="https://arxiv.org/abs/2603.24113" target="_blank">Mixed-signal implementation of feedback-control optimizer for single-layer Spiking Neural Networks</a>.
  Haag, J., Metzner, C., Zendrikov, D., Indiveri, G., Grewe, B., De Luca, C., and Saponati, M. arXiv:2603.24113, 2026.
  <br>
  [2] <a href="https://arxiv.org/abs/2602.13261" target="_blank">A feedback control optimizer for online and hardware-aware training of Spiking Neural Networks</a>.
  Saponati, M., De Luca, C., Indiveri, G., and Grewe, B. arXiv:2602.13261, 2026.
  <br>
  [3] <a href="https://ieeexplore.ieee.org/document/8067689" target="_blank">A scalable multicore architecture with heterogeneous memory structures for dynamic neuromorphic asynchronous processors</a>.
  Moradi, S., Qiao, N., Stefanini, F., and Indiveri, G. IEEE Transactions on Biomedical Circuits and Systems, 2018.
  <br><br>

  </article>
</main>
</div>
