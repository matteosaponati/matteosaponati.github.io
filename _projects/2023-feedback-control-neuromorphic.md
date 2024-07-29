---
title: "Sequence anticipation and spike-timing-dependent plasticity emerge from a predictive learning rule"
collection: publications
permalink: /publication/2023-predictive-learning-rule-natcomm
date: 2023-08-21
venue: 'Nature Communications'
citation: 'M Saponati, M Vinck. <i>Nature Communications</i>, 2023.'
---


- the goal is to develop an optimizer algorithm for Neuromorphic devices - an algorithms that allows to get some sort of credit-assignment, that is, to optimize some hierarchical structures ONLINE and on Neuromorphic devices




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



IMPORTANT: train class loss goes down earlier because the feedback control pushes the training loss down! The feedback allows to have very little error, but during validation the feedback is disconneted.


- training mixed-signals Neuromorphic devices

- train without backprop of gradients
- train online
- train robust enough to fit with Neuromorphic constraints


- show tha training requires very little spikes


- defining the correct target at the output is a problem: the approach allows to have flexibility on how to define the target, but there is less grounding for finding the right ones.


Possible things to optimize:
- initialization
- feedback control parameters
- learning rate