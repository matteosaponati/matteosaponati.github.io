---
title: 'the backpropagation tunnel is propagating forward, and it's sticky'
date: 2024-03-20
permalink: /posts/2024/03/the-backprop-tunnel/
published: false
tags: learning-algorithms
---

The backpropagation tunnel propagates forward, moving us exponentially far away from our starting point. But are we in the right direction?



- GPUs, automatic differentiation, and other pieces of the tunnel

We are stukc in this 

This "evolutionary force" has chosen GPUs, and has pushed for TPUs and other types of hardware accelerators. This comes of course with stronger investments, carrying higher interests, and thus even stronger consolidation of the new trend. The mental ease of opening a google colab, import some pytorch stuff, and train a small model from scratch it's just low enough - we prefer to do that rather than asking if you could achieve the same results in another way. 

Of course, there are very valid reasons why this is the case. 30 years ago we thought we will soon have flying cars, but we could not even think about large language models if not in a sci-fi story. Today we talk with a statistical model to write hundreds of lines of code, in a couple of minutes. Achieving very high performing algorithms by making them differentiable and optimizing them just works now. 

There is abundant evidence from cognitive and social sciences that we humans are full of biases, we engage in group behaviours, and its just easier for us to think about things similarly to how other people think.

All of this, we are creating a social and economical environment that privileges some solutions and raises walls for other ones. The main bottleneck is that (1) errors are differences in high-dimensional spaces, (2) algorithms are smooth and differentiable, and (3) the more forward and acyclic your computational graph is the better.

- What if errors are not differences?

If, indeed, one computes errors as differences between vectors in multi-dimensional spaces, then "getting better" at a specific tasks

if you compute errors as differences in multi-dimensional vector spaces, then "getting better" means moving the activity of the network in specific directions, and this means that - anyway - the only thing you should do is to move in the direction of lower error. If you do so, it means you are following some "gradient". If you do so, you need to align the changes in your network such that they point, overall, in the good direction.

- Message-passing in structured networks

- Are incremental changes the best changes?

changes are not incremental: synaptic traffickying, noisy synapses, several types of synaptic integration across the membrane, maybe it is not about geometry, it's about time.

Machine Learning is a very rich field, . The most foundational work for ML is probably statistical learning theory (link) - in that framework you define  

















- are incremental changes the best changes?

if you compute errors as differences in multi-dimensional vector spaces, then "getting better" means moving the activity of the network in specific directions, and this means that - anyway - the only thing you should do is to move in the direction of lower error. If you do so, it means you are following some "gradient". If you do so, you need to align the changes in your network such that they point, overall, in the good direction. How to communicate this across your system, and orchestrate plasticity, is the main problem of credit assignment. Specific assumptions constraint the space of possible solutions. 

automatic differentation and backprop are biasing the field, creasing a bottleneck that privileges differentiable systems awith directed, acyclic graph.

weight transport problem, locking problems - you need to store activities and parameters, and buffer them allover the network

message-passing and communication issue: how to inform computational units in the systems, and what type of message to send -> systems in the brain are cycled, recurrent, heterogenenous, heterarchical

the requirement of an acyclic form makes it difficult to incorporate mechanisms such as lateral competition and cross-layer interactions



parameters are the commitment to a specific model of the world


------

the computational complexity of the algorithm will depend on the reference frame and the data structure (the representation).