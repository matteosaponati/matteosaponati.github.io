---
title: 'behaviourally relevant synaptic plasticity - one of the many things that happen in dendrites'
date: 2024-03-20
permalink: /posts/2024/03/btsp-oneshot-rules/
published: false
tags: learning-algorithms
---

![](https://static.wixstatic.com/media/fdab37_affebf0f74384776b34299200f07c7d4~mv2.jpg/v1/fill/w_417,h_306,al_c,q_90/fdab37_affebf0f74384776b34299200f07c7d4~mv2.jpg)

I am on train coming back from Frankfurt, <a href="https://open.spotify.com/track/55mvtucws4Mnro27744t9X?si=58d552b8c5424fa9" target="_blank">this</a> is playing in earphones, and I am still floating from the beautiful party I had yesterday with so many fantastic friends. This DB train is so full. I am sitting next a relatively old man reading a small book in french, he seems so calm and relaxed. I envy him a lot. Sitting here, I decided to start writing this post. 

A couple of weeks ago I went to Cosyne 2024 in Lisbon, and it was (as always) an experience rich in information content and grilled fishes. I joined a workshop entitled "*Role of dendritic Ca2+-spikes in reorganization of network dynamics, learning and memory*", organized by Jeff Magee and Balázs B Ujfalussy. There were many interesting talks, and one may elaborate extensively on all of them. I am not going to do that, instead I will focus on a couple of aspects that I found interesting. So, as I did in a previous post, quick **disclaimer**: this is not intended to be an exhaustive or complete review of the workshop - just some thoughts :) 

There are multiple interesting things that happen in the dendrites of pyramidal neurons. These cells comprise for most of the neurons you can find in the cortex, and they are characterized by long branches of dendrites where synaptic inputs from local and long-range connections can sit. In particular, a pretty interesting phenomenon are the "<a href="https://www.jneurosci.org/content/18/10/3919" target="_blank">dendritic spikes</a> ". Basically, non-linear events that boost the membrane voltage of the cell. They have a pletoria of different properties depending on the ion-channels involved, the amount and coordination of the pre-synaptic inputs triggering them, etc .. these guys have another non-linear processing step before the activation of a somatic output spike. In fact, it turns out that triggering a dendritic Ca2+ spike produces more output action potentials in the axon than suprathreshold input to the cell body does (<a href="https://linkinghub.elsevier.com/retrieve/pii/S0166223612002032" target="_blank">as explained here</a>). This is interesting.     

### plateau potentials - taming the beast

I'm citing the famous <a href="https://www.nature.com/articles/nn1100_1178" target="_blank">work</a> by Larry Abbott on purpose: calcium (CA2+) dendritic spikes are observed in multiple brain areas, have have two remarkable properties making them unique: (1) they are large events, and (2) they can induce significant synaptic plasticity in a single shot.

First, these events are indeed global events that 

Second, recent evidence supports the existence of the so-called *behavioural time scale synaptic plasticity* (BTSP), firstly discovered in the lab of Jeff Magee himself. The results suggest that dendritic spikes are part of a local error signaling mechanisms to drive plasticity. From their <a href="https://www.science.org/doi/abs/10.1126/science.aan3846?casa_token=-10OxuMFtn4AAAAA:h6nHeumM4rItaA1HfyH8ZhBmch_mJEtA3NcBTbLqj-Pb3-Yp1w4bhPP1eAYZtKr9cvYtqWLbY0zrPHM" target="_blank">Science paper</a> in 2017: "*The potent, asymmetric seconds-long plasticity produces, within a single run, place-field firing that peaks before the location where complex spiking occurred, providing a predictive signal of behaviorally relevant events [...] Such experience-dependent tailoring of the CA1 representation by BTSP could create network-level overrepresentations of particularly important locations as well as the activation of specific trajectories toward reward locations observed during different phases of exploration.*"

### who is mr. eligibility trace?

Imagine you are a dancer, and you are flowing in a lovely couple dance. When you are a follower, you learn how to read the signs of the leader, any figure can be followed by many others, and it is important to keep track (a memory) of inputs for a bunch of seconds. One example of a typical 5-steps figure in Forró (<a href="https://www.youtube.com/watch?v=C9g9pvz_se8" target="_blank">a beautiful dance form the north-east of Brazil) is called (<a href="https://www.youtube.com/watch?v=QdvzUyJkQcca" target="_blank">"panamericano"</a>), where the leader moves the arm of the follower down at step 1 and start creating a circular figure, evolving into a turn at the last 2 steps. Strengthening the relation between inputs that are far in time is crucial. It is unclear who keeps the memory of pre-synaptic inputs in "just" a single neuron. How the neuron remember which synapse was active seconds before/after the plateau potential? 

The standard answer is an "eligibility trace", a low-pass filtered memory of the input that takes long enough to decay. There are many options for such traces, maybe mediated by CaMKII, maybe by other Ca2+ intracellular signals, maybe by something else. Despite this variable being crucial for any physical implementation of this rule, I think there is still quite some confusion on the topic. I am also, however, far from being an expert on the topic, thus I might be shamefully wrong. 

PS: Eligibility traces were already a bit "problematic" in the STDP era: a EPSP elicited by a one pre-synaptic spikes has a decay time constant of ~ a couple of ms. The question is the same: who is keeping the data buffer? 

### filter the noise in between

This one-shot learning stuff is great, and it is pretty remarkable that such pehnomenon can be so clear and reproducible. To my eyes, though, this comes with a clear issue. Hebbian learning rules, or actually any learning algorithms used in Machine Learning, is based on fundamental concepts of learning - number of times this happened (repetitions), and - intensity of such excitement. Further, this is based on fundamental principles of statistical learning theories: in order to better learn the statistical regularities, you want to sample from the unknown distribution enough times to be sure about what you are learning, and you want to learn by small increments to get a stable, trustable understanding of the world. This is clearly translated into optimizing the likelihood of your prediction by averaging over multiple observation and proceeding by greedy, small updates of the model with gradient-based methods.

 the How do you make sure to not learn noisy "crap" they were called during the workshop) during such a long learning window (this is how they were called during the workshop)? 
 
The BTSP few-shot plasticity must be complementary to other, perhaps less evident, mechanisms happening either in single neurons and/or in networks. One idea I have in mind: maybe there are some "gating" mechanisms that filter out the crap and let neurons learn a place field *only* when it makes sense, just in one-shot.