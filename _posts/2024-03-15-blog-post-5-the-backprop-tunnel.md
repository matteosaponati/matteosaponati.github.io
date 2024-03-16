---
title: 'the backprop tunnel, and how to get out of it'
date: 2024-03-20
permalink: /posts/2024/03/the-backprop-tunnel/
published: false
tags: learning-algorithms
---

if you compute errors as differences in multi-dimensional vector spaces, then "getting better" means moving the activity of the network in specific directions, and this means that - anyway - the only thing you should do is to move in the direction of lower error. If you do so, it means you are following some "gradient". If you do so, you need to align the changes in your network such that they point, overall, in the good direction. How to communicate this across your system, and orchestrate plasticity, is the main problem of credit assignment. Specific assumptions constraint the space of possible solutions. 

automatic differentation and backprop are biasing the field, creasing a bottleneck that privileges differentiable systems awith directed, acyclic graph.

weight transport problem, locking problems - you need to store activities and parameters, and buffer them allover the network

message-passing and communication issue: how to inform computational units in the systems, and what type of message to send -> systems in the brain are cycled, recurrent, heterogenenous, heterarchical

the requirement of an acyclic form makes it difficult to incorporate mechanisms such as lateral competition and cross-layer interactions

changes are not incremental: synaptic traffickying, noisy synapses, several types of synaptic integration across the membrane, maybe it is not about geometry, it's about time.

parameters are the commitment to a specific model of the world


------

the computational complexity of the algorithm will depend on the reference frame and the data structure (the representation).