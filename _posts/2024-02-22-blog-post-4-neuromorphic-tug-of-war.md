---
title: 'a tug-of-war where I do not understand which side I am'
date: 2024-10-28
permalink: /posts/2024/10/neuromorphic-tug-of-war-bernstein-2024/
published: true
tags: neuromorphic, neuroinformatics, INI, bernstein_conference
---

It's been a while since I last published something on my personal blog. Life has moved along in beautiful, unexpected ways, and I've experienced many absolutely lovely moments. On the professional side, I recently had the opportunity to organize a workshop at the Bernstein Conference in Frankfurt am Main (my lovely and chaotic Frankfurt <3). This workshop was brought to life thanks to the other incredible organizers, Laura and Melika, with their creativity, initiative, and vision. I feel grateful to be a part of this vibrant community. So, why not use this opportunity to write here again?

Since moving to Zurich, I've had the privilege of engaging in open discussions with so many brilliant minds at the Institute of Neuroinformatics (INI). Here, together with Giacomo Indiveri and Chiara De Luca, I've been organizing a few institute-wide discussions on neuromorphic computing. Many of these conversations were also sparked by my exchanges with Laura and Melika. With them, I found myself frequently diving into the question of what neuromorphic computing means today. What does Neuroscience bring to the table now, and in which directions is Machine Learning propelling this field? Are the older more classical approaches still ideal? "Shall we organize a workshop about it"? And just like that, the idea was born.

In a nutshell, our motivation for the workshop was as follows: While AI research has been inspired by understanding how the brain works, recent breakthroughs in AI are driven by Machine Learning (ML) algorithms that achieve astonishing performances with only minimal inspiration from biological networks. This tug-of-war between Neuroscience and AI raises some key questions: Which biological features are promising for hardware implementation, and which are merely incidental? What could Neuromorphic Computing gain from integrating insights from the ML community?

<p align="center">
<img src="https://media.licdn.com/dms/image/v2/D4D22AQFjlOi97zbbSg/feedshare-shrink_1280/feedshare-shrink_1280/0/1727448258379?e=1732752000&v=beta&t=TlaBw5G80ePBLS8gt9LIQGoFt-m_UgkUxPiqwR_7H1E" width="500"/>
<br>
<em>the logo of our workshop - cute, right?</em>
</p>

We managed to gather an incredible line-up of speakers. The day before the workshop, Melika sent out an email to all of them: "[...] In order to stimulate discussions, we would like to ask each of you to finish your talk with one conclusive, opinionated statement." Brilliant idea. We collected a series of thought-provoking statements that triggered vibrant discussions. I've put together an unsorted, definitely partial, and somewhat unresolved list of the relevant discussions that arose during the workshop. I might write more about these topics in the future, but for now, these are the ideas that got stuck in my mind, and the questions I feel compelled to keep exploring.

### - Wanna be general or wanna be special?

I could have also named this section "When do we need scalable search in the parameter space versus engineered solutions within a constrained environment?". A bit of a mouthful. The idea here is: should we strive for general-purpose solutions also in neuromorphic computing, or is there value in specialized, handcrafted ones?

Elisabetta Chicca had some thought-provoking insights: "Why does everything need to scale? Sometimes problems are small and require only a small, specialized solution." She highlighted that when training networks with backpropagation, we might succeed in solving a specific task, but we often lose a deeper understanding of how it works. By engineering a solution within a constrained environment, we might learn more about the kinds of solutions nature found to tackle similar challenges. There's something deeply fascinating in building systems that echo nature's simplicity and specificity.

On the other hand, Konrad Kording argued that simple, specialized solutions often fall short. This is a <a href="http://www.incompleteideas.net/IncIdeas/BitterLesson.html" target="_blank">bitter lesson</a>: “The biggest lesson that can be read from 70 years of AI research is that general methods that leverage computation are ultimately the most effective, and by a large margin [...] One thing that should be learned from the bitter lesson is the great power of general purpose methods, of methods that continue to scale with increased computation even as the available computation becomes very great. The two methods that seem to scale arbitrarily in this way are search and learning”. We should specify the form of the models and let scalable algorithms like gradient descent determine the parameters. He pointed out that gradient descent isn't necessarily at odds with biology. Many biological mechanisms resemble gradient-like optimization processes. The key is not to get stuck trying to map one biological mechanism directly onto backpropagation, but rather to appreciate that the interplay of multiple mechanisms could be what truly mirrors the optimization strategies we see in nature.

In essence, the debate boils down to these two different philosophies. Do we take the minimalist approach, adding just enough inductive bias to guide artificial learning? Or do we build in handcrafted assumptions and constraints, designing solutions that fit the context perfectly? Perhaps there's value in both. Learning from biological systems that are resourceful yet limited, and using scalable search when the problem calls for generality. Nature, after all, is full of both specialist and generalist systems, and perhaps our solutions should be as well. The key is then to find how much inductive bias to put into the system, to help the optimizer find the best solution in a smaller search space. Convolutional Neural Networks (CNNs) are a beautiful and successful example of that. 

<p align="center">
<img src="/files/blog/2024-10-28-neuromorphic-tug-of-war/workshop-dinner.png" width="700"/>
<br>
<em>some of us having dinner with the speakers</em>
</p>

### - the industry perspective: what to focus on, and how to become successful

The effort to develop neuromorphic hardware undoubtedly has research goals, but it goes far beyond academic pursuits. The energies and resources invested in this field are fueled by the promise that these devices could solve significant challenges faced by standard ML algorithms running on general-purpose hardware. Neuromorphic computing represents a radical shift in hardware design, and radical shifts are tough. This approach envisions a future where computation is pretty much inspired by the brain, fundamentally changing not only how we build machines but also how we create software - not that easy to digest. Effectively, this new paradigm isn't just about technical improvements; it’s about reimagining entire ecosystems, reorganizing industry pipelines, and strategically redirecting investments. This requires a cross-stack thinking of building hardware and software together, with the most important objective of opimizing for resources.

This is a crucial perspective to consider. Since achieving practical deployment is an important goal for the field (whether explicitly stated or not), one has to understand how people in the industry play their game. Importantly, the industry's bottleneck (i.e., the challenge of commercial deployment) needs to be addressed if neuromorphic technology is to succeed. To overcome this, minimizing cost is fundamental. Much like minimizing the metabolic cost of a novel organ in a biological organism. You can't just redesign an entire biological system to fit a new organ without respecting the current constraints. Similarly, in industry, any new technology must operate within the existing ecosystem's limitations. During the workshop, talks from Sara Hooker and Dylan Muir offered valuable insights into this point. 

Most likely, we need something that is: (1) easy to produce - the technology must be easy to manufacture, which enables high yields and makes scaling possible, (2) easy to use, maximizing the outreach and encouraging adoption by non-specialists, (3) reliable, allowing to minimize the system costs and ensure stability, and (4) reconfigurable,  allowing for multiple uses of the same device across different applications. And most importantly: (5) better, at least in some sense, to standard computing solutions. Sara Hooker introduced the concept of the "hardware lottery" in her talk, and quoting one of her slides: "In the short history of modern computer science, arguably it is compatibility with our tooling more than any other factor, has explained the speed of progress in computer science.". In other words, breakthroughs often succeed because they align serendipitously with existing tools, infrastructure, and conditions. They are not necessarily inherently superior in concept.

Dylan Muir drew a beautiful parallel with artificial neural network (ANN) engineering in the early 2000s. Back then, there were no GPUs, no CUDA, and no PyTorch. ANNs were definitely not the most successful paradigm at that time. However, incremental progress driven by the persistence of PhD students, minimal yet effective biological inspiration, and the smart optimization of existing technologies like GPUs, led to the explosion of Deep Learning in 2012. Instead of attempting to disrupt the industry from the ground up, scientists made the most of what was available, breaking through with a series of impactful baby steps.

In this sense, analog hardware faces significant challenges when it comes to deployment. It requires extensive expertise, each chip demands calibration before deployment, and noise and calibration issues make scaling difficult—at least for now. These obstacles highlight the importance of identifying which technologies can realistically thrive in an industrial setting and which are likely to remain confined to research labs for the foreseeable future.

Of course, there is a big question here: Will these neuromorphic systems replace every computing device used for any purpose? Arguably not. While the neuromorphic paradigm shift is still not easy to digest, it will likely apply to a subset of the industry environment. We will not start playing computer games on neuromorphic architectures, nor running software for inventory management or complex symbolic reasoning. Much like in a biological organism, different problems require different solutions: lungs, livers, and brains all come together symbiotically. I believe well-crafted neuromorphic systems will co-exist with “conventional” computing devices. 

<p align="center">
<img src="/files/blog/2024-10-28-neuromorphic-tug-of-war/konrad-kording-slide.png" width="700"/>
<br>
<em>some opinionated statements from Konrad Kording</em>
</p>

### - Which design principles?

I kept coming back to this question throughout the workshop, and honestly, I wasn't entirely satisfied with the answers ( including my own). If we try to extract the core design principles from the biological processes we observe in neurons, what can we uncover? 

One fundamental principle is locality. Biological systems organize and adapt through local interactions (both in space and time) driven by physical and metabolic constraints. But this isn't just a limitation; it's also a power. Local interactions reduce the need for extensive message passing across the system, providing an elegant way to solve many tasks. From statistical physics, we know that self-organization through local rules is a simple yet powerful mechanism for achieving global behavior without an external controller.

Another essential principle is sparsity. Biological systems don’t blanket the space of possible connections, interactions, or activity patterns. Instead, they opt for parsimony - few connections are strong, and only a handful of neurons are active for short bursts. This not only minimizes energy consumption but also ensures efficiency and responsiveness. Tobi Delbruck explained this very well in his talk. Basically, exploiting sparsity is the most obvious route in mass-production neuromorphic computing. He nicely showed that exploiting spatial in conventional hardware is critical only in communication but also in memory access. Something I didn’t know about DRAM: despite being the dominant high-throughput and low-cost solution for memory, they have a preferred direction for reading. Doing it in the right direction speeds up the process heavily - a good x50. Exploiting this feature with predictable access patterns on sparsified Convolutional Neural Networks (CNNs) and Recurrent Neural Networks (RNNs) represents a very parsimonious but effective way of using biological principles on a different hardware.

However, these features have been extensively theorized, discussed, and even implemented in neuromorphic systems as design principles. And here I wonder: What else? What other design principles can we glean from biology? To me, it seems that good architectural biases are key. We should deliberate structures within the system that make sense for the specific problem at hand. Perhaps this is where biological inspiration truly matters: not just in mimicking individual components but in shaping the entire architecture, guiding us to design systems that are both powerful and adaptable.

—-

If there’s one thing I took away from all of this is that the path to transformative ideas is rarely straightforward. It requires long-term vision, wiseness, and the ability to always question yourself and not fall into your own biases. It also requires empathy, communication, and being able to see the people you are working with as other humans like you, with their own fears and vulnerability.

<p align="center">
<img src="/files/blog/2024-10-28-neuromorphic-tug-of-war/me-talking-stuff.gif" width="400"/>
<br>
<em>me talking stuff on predictive plasticity rules at <br>another workshop next-door during the Bernstein Conference
<br>(and somehow controlling rainbows with my italian gestures)</em>
</p>

Let’s see where this research path will lead me, and I will write again here in my own little corner of the world. Finally, thank you so much Ana, Melika, and Laura for the feedback and comments on this blog post :) 