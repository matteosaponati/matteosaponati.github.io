---
title: 'this mesh of code and english called agents'
date: 2026-02-06
permalink: /posts/2025/11/how-I-think-about-agents/
published: true
tags: llms, reasoning, agents
---

<a href="https://x.com/gdb/status/2019566641491963946?s=20" target="_blank">December 2025 was a shift</a>. I have been using agents more extensively for ~2–3 months now, and I can clearly see the difference in my workflow. I am significantly more productive, and I can search and explore way faster. But the landscape is also radiply moving forward, and it is hard to keep up. So i started taking notes. 

For me, the main shift is understanding that the codebase (code + structure + conventions) plus the notes (plain english) are just one big prompt/context. The “internal language” of the agent is a blend of code and English that you don’t even need to fully speak. Then, we interact with this intelligent mesh in plain English: you prompt jobs, you review outputs, you steer.

<p align="center">
<img src="/files/blog/2026-06-02-this-mesh-of-code-and-english-called-agents/the-agent-is-a-mesh.png" width="500"/>
</p>

--

Here are a few simple heuristics that currently help me reason about coding agents, and a few things I learned in these months.

- <b style="color: #8B5A96;">agents are llms + a loop.</b> A “coding agent” is not magic. It is a model wrapped in an execution loop: read context → propose actions → run tools → observe outputs → update plan → repeat. If you want a slightly more concrete picture of this, the mental model of an “agent loop” is a good anchor (see 
<a href="https://openai.com/index/unrolling-the-codex-agent-loop/" target="_blank">here</a>).


- <b style="color: #8B5A96;">the prompt is not your message, it’s your repo.</b> In practice, your chat message is just the tip of the iceberg. The real prompt is composed by repository structure, the filenames, the tests, the docs, the conventions, tge recent diffs, plus whatever persistent context you keep around (more on this below). We should always think “what context would make the correct solution the easiest solution?”

- <b style="color: #8B5A96;">your job is oversight.</b> The workflow is changing drastically. I just let the agent handle most of it for me. My role now is oversight, steering, and paying attention to details. This is not less work, <a href="https://x.com/karpathy/status/2019137879310836075?s=20but" target="_blank">is different work</a>: you spend less time writing lines, and more time shaping constraints and verifying assumptions. I open multiple git worktrees and one cursor instance per worktree to track the agents and their changes.

--

The main issue is not “getting the model to write code”. It is learning how to orchestrate message-passing, and making sure agents create memories, cooperate, and improve over time.

- <b style="color: #8B5A96;">how to create `AGENTS.md`. </b>
<br>
A good AGENTS.md is basically a README for agents: a predictable place where you give the project-specific context that doesn’t belong in README.md, but that the agent needs on every turn. My current rules of thumb are:
(a) optimize for “first 2 minutes”, the agent should be able to run tests and orient itself immediately; (b) separate “how to run” from “how to think”, Commands and conventions are different kinds of information; (c) write down the “definition of done”, e.g. tests to run, files to touch, expected behavior, acceptance criteria; (d) be specific about boundaries, e.g. what not to change, to refactor, and what must remain stable; (e) always tell the model to consult the docs thar you think are important.
<br><br>
but honestly, I also believe that this is still a wild west that has to be explored. I am not a fan of giving too many constraints to the agents. Constraints can just ruin the performance, let's just allow them to explore and we correct on the way. Plus, <a href="https://x.com/karpathy/status/2015883857489522876?s=20" target="_blank">there are gods of ML from whom you can learn better</a>


- <b style="color: #8B5A96;">markdown files unlock continual learning. </b>
<br>
This one surprised me: i don’t actually need to read most notes for them to be useful. <a href="https://x.com/KarelDoostrlnck/status/2019477361557926281" target="_blank">This has apparently been confirmed</a>. I usually keep one extra markdown file that serves as an index (basically a table of contents of “what i’ve learned about this repo / area”), then I point the agent to that index inside AGENTS.md. I keep all notes in a folder withint a git worktree, and 
while working, ask the agent to commit notes and helpers as it goes. After a task, I ask what went wrong and improve the documentation and the relevant skill so that it can navigate that situation next time. After a few interactions things starts to ork, and that is when the workflow starts to feel compounding.

- <b style="color: #8B5A96;">how to create skills. </b>
<br>
Skills are packaged procedures: a small workflow + references + optional scripts that an agent can load when relevant.
The main trick i learned is: skills are only useful if you can reliably trigger them and keep them sharp. If the agent doesn’t remember to use them, they might as well not exist. A workflow that seems to work:
(a) create a skills/ folder and treat it like a library of standard operating procedures, (b) if you ask the agent to do something repeatedly, that’s a skill. write it down and commit it. If you are using Codex-style skills, the official docs are worth skimming just to internalize the format and the “progressive disclosure” idea.

- <b style="color: #8B5A96;">managing subagents. </b>
<br>
For now, I really do not have any recipe for this. I usually let the main agent spawn subagents in parallel worktrees, and only talk to the main one for the consolidated picture. Apparently agents are now good enough at using subagents.

--

Finally, it is not important to have fancy, complicated tools. Only the simple tools and methods can scale, and this is what really matters. The more opportunities we have (more compute), the more we should use them for searching in these complex, high-dimensional spaces. The capability curve is steep, and the reachable search space is exploding. This year is going to be wild. The amount of space humans will be able to explore with coding agents is just massively bigger.

Let's look at the first derivative, not at the actual stage. 

