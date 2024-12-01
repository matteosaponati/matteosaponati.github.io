---
title: 'a predictive learning rule in single neurons'
date: 2024-02-22
permalink: /posts/2023/12/predictive_neuron/
published: false
tags: predictive-neuron-1
---


- 

technology at the time (80s) -> using the techonlogy of silicon and CMOS circuits
can you emulate the biophysics of cells using the physics of transistors? -> weak-inversion, subthreshold analog mode of thrsholding (diffusion and boltzmann statistics)

CALTECH years - early 90s
+
misha and rodney douglas -> the first silicon neuron (Nature cover)
(here Neuromorphic meant exactly this)

but 2008 -> Memristors: memrististive devices that can store non-volatile memory when spikes are applied to them, electronic medium reproducing synapses -> (new Neuromorphic)

but 2014 -> 1e6 neurons with IBM TrueNorth in accelerator for SNNs, simulations (new Neuromorphic)
but 2018 -> Intel Loilhi asynchronous digital chips to simulate SNNs (new Neuromorphic)

Neuromorphic: exploiting the physics of CMOS and ohther materials to emulate neural computation
combine analog, asynchrnous digital, and logic circuits 


- edge computing

Energy: it is not enough to look only at the single device (where digital and analog devices might be in the same order of magnitude), but looking holistically at the whole systems demand, where there is strong different.


Emulation of dynamics and 

SpiNNcloud 

IMPORTANT POINT: just scaling things up would not necessarily lead us to (looking at what was happening in the 90s: after silicon neuron, people thought that just by adding multiple silicon neurons on VLSI we would emulate brains) 


-> representations
-> analog and digital together
-> time representing itself
-> multiple timescales


- emulate real neurons to reduce power consumption and understand how to represent and compute in real biological systems

The hardware IS the algorithm.
* simulator: von neumann bottleneck, moving data back and forth, this is not ok. You need massively parallel distributed computation.
* 
* real-time signal processing
* feedback adaptation and learning -> continual, always-on learning
* slow temporal non-linear dynamics: why to slow down if you can simulate order of magnitudes faster?

* noise/variability as exploitable features? 
how do you cope with 20% mismatch? you can average (reduce ~ 1/sqrt(N)) but with E/I balance you can reduce by 1/N

look at biology on how to actually cope with variability -> local learning rules require redundancy (population codes), variability and heterogeneity, and "analog" continuous-time state variables

IDEA: how to change the Coefficient of Variation on the fly? changing how you average depending on accuracy/

* capacity does not scale as much as transistors // you pay low-power with huge area per neuron -> but most of the area is used by the digital part (TCAM and SRAM) -> how to use this 

- neural computational primitives: identify and adopt basic building blocks 
IDEA: frame your model as a computational primitives

extreme-edge computing applications -> not solving excel, but monitoring 


- POIRAZI

dendrites help saving area: computational units that are close to the neurons, and they can make local regenerative events (multiple dendritic spikes within one dendritic structure) -> semi-independent computing units

(time)  coincidence detection
(space) synaptic clustering -> synaptic turnover, active rewiring
(space) segregation of inputs at different dendritic compartments (compartmentlization of activity)
(adaptation) local LTP with dendritic spikes or bAPs, and global LTP as combination of the two -> plateau potentials


- (Holger Hoos) the age of computation

difference between definition of computation and human performances: algorithms are made exactly to do what humans are not good at making

the bottleneck for algorithms development is: human programming
-> ML automatic construction of algorithms that solve the problem

science and engineering:
1) experience and experimentation: only experienced masters with a lot of hands-on expertise will work, without background theory
2) Mathematics: formalization, analytical insights
3) Computation: automation and simulation based on the mathematics, such that
4) AI ~ handling complexity -> learning

- (Anna Levina) Different timescales


- energy consumption of biological brains scales linearly
- overheating point on 3D circuits: you need to get signal sparsly to aoid overheating, -> activity is getting sparser and sparser as brain size increases, making neuronal activity sparser and for relevant intrinsic dimensions
sending a lot of redundant signals around -> 





- What is Neuromorphic computing? the meaning of words change over time, we always need easier forms of expression and communication, and some word gain attractiveness across time, and then slowly decay. To judge if something is really "Neuromorphic" and in which sense it is it's a problem by itself.


- incremental updates versus instantaneous generalization.

maybe what we actually do is to overfit badly on the current set of samples we are working on, but we are very good at then "overfitting" on new datasets without re-learning the weights. Perhaps, through feedback mechanisms, we can navigate the manifold rather than learning it (storing it) such that we can be temporarily very good at some tasks (and not at others).




Dylan Muir: Parallels between ANN engineering in early 2000s (no gpu, no cuda, no torch) and SNN 2015s and beyond
requirements:
computing paradigm or the programming model - (backprop)
software support or API 
easy to use hardware platforms

things that manage to go through the industry bottleneck (commercial deployment) must be: 
- easy to produce - high yield - low cost
- reliable - lower system cost
- easy to use - faster uptake
- reconfigurable - multi-purpose - low cost

analog is tricky for deployment: needs too much expertise and each chip needs calibration before deployment, noise and calibration cannot scale (at least for now)

<br><br>
  To develop this algorithm, I take inspiration from alternative approaches to backprop which still relies
 

  Mixed-signal neuromorphic device emulate the dynamics of biological neurons efficiently with limited power and area, with applications for edge computing.   
  
  If you have trainable parameters on a non-convential computing hardware, what is a good algorithm to 
  move in the parameter space and find the right set of values for a given problem?
    
  the optimizer: implementable on HW directly, allowing for online-learning, grounded and solid (device mistmatch, variability, noise)

  relaxing the concepts of hierarchy and layers -> they are defined by the boundaries in the organization of the system (who gets direct feedback, who has indirect effect).

  Issues: how do give the proper target to heac computational unit: how to search in the space of targets?

  - Leverage on applicability: a simple, grounded proof that this system works. It should be reliable, flexible, and simple enough.
  - Leverage Neuroscience: feedback can be strong, not incremental -> moving out from backprop + leverage the recurrent, cyclic, heterogeneous nature of the architecture to build the optimizer (the hardware is the software)
  - feedback signal + compute differences: let this obe other neurons or a different compartment (not os new idea, present in PC and Equilibrium Prop)
  - 

  <b>what</b>

  Artificial Neural Networks (ANNs) models and training procedures with error-backpropagation
  algorithms have advanced in the last decades, reaching outstanding performance on tasks such as
  image processing and text generation. The optimization of these networks primarily relies on offline
  training with vast amounts of data and energy-intensive simulations on hundreds to thousands of
  hardware accelerators. However, as intelligent systems get integrated into vehicles, utilities, distributed
  sensors, and robotics, there is a growing need for embedded Machine Learning in hardware. Such
  hardware must process information with low latency to enable real-time interactions with the
  environment while also minimizing energy use and communication costs. Neuromorphic computing
  meets these demands by implementing neural information processing directly on hardware. In
  particular, Spiking Neural Networks (SNNs) mimic the communication strategies of biological neurons,
  supporting sparse and event-driven computing with low power consumption. Yet, while the brain
  provides examples of highly performing biological SNNs, the field lacks principled and scalable
  algorithms for these networks. The optimal training procedures for spiking neurons are unclear, the
  gap in performance with standard ANNs is still substantial, and achieving stable and noise-robust
  network dynamics on-chip is challenging. My project seeks to bridge this gap by developing a learning
  algorithm for SNNs that is scalable, inspired by biological processes, and compatible with
  Neuromorphic devices. The proposed project will connect several lines of research and will have two
  principal outcomes of significance. First, it will provide an innovative framework for training SNNs by
  using unsupervised learning rules to stabilize learning locally and top-down feedback mechanisms to
  govern the training process globally. Second, it will support the development of scalable Neuromorphic
  chips that are comparable to standard ANNs, while implementable on low-power Neuromorphic
  processors. Finally, completing this innovative project will be an enormously important step for
  extending my expertise in Machine Learning and reaching my scientific independence.

- 