---
title: 'neuromorphic tug-of-war'
date: 2024-02-22
permalink: /posts/2023/12/predictive_neuron/
published: false
tags: predictive-neuron-1
---

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